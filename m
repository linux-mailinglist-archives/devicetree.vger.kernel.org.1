Return-Path: <devicetree+bounces-214909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BD2B4FA0B
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:14:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FAE3444ADD
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F18E332BF3D;
	Tue,  9 Sep 2025 12:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EcQg1awf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F14432CF97
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757419967; cv=none; b=GciW3JVi3/h+3lfI2DpsNhdGjqQvyvl52eKXMWstCiPrOsflt2CrBQJOh40U6nS6mSEZDVIB8gRjEgfpwQSe4gR7oSW3S9OmIZOOz1gzKplqiv1lMEE9Bd9cuuenKK1FSuLZssDWJ6Aa7CXh6fWm22/LA/EVRq8NUbo80rOByiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757419967; c=relaxed/simple;
	bh=J5/QpCDoFJoufpcMOKJW/ktR4sR0JsuMqYsFq7c/gik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Iyedw1wZjdeJ8Voz8lpNqgguJRPLxEloIqRvRBqwlWhVzR2Sl8vCvFX9KJXcnfuN05XaJOx5FZ1/PjDTUw7G5fI2nFwl3xN2g0s6yJMOsiFD8T/+NeoTfcFTREHdFAs/TNbula8LHhWegIZ/yhBiP5bdXijIA1/q2iM4rfPheA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EcQg1awf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LgZd030651
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 12:12:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F3/gI7HiWsKdqwPQvxhHv/oAU3laA8pk38dutfqDJT8=; b=EcQg1awfXKL0VuxZ
	0RjlKjTot8QqUrjeO0y1JrKA5gPbJjCPzORbwtQizjqBoGuidn6DkZDjoKS1hfhl
	uspNX/wZJedIeZHzuLJNSf5V+5tadAbhC8DUvlc9YJ5NFEnhgLXnpt3uuPGWVqr3
	MuUnNNh3xX5WiPCbOdJ12TnNLm8hhxxsNO0PfKt2+g1sRRIIL7bvQiajAOAhjfRc
	TfcG9CgpxPlmeMPr9rQK0J7/zaXfwxDnvhyO1OcfzJPfTJs53cuwqqXrAzNMvddP
	xWy2mlOGHI8n9BzOByuGpf8Sc/My+1yuv9CJvmv+Z5u9HOOSZ9kY4rLZ878ttV/M
	HdCiKg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490c9j886g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 12:12:43 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7507804a7f7so33023456d6.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:12:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757419962; x=1758024762;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F3/gI7HiWsKdqwPQvxhHv/oAU3laA8pk38dutfqDJT8=;
        b=nEYo3Oq2PxInql4uPFhtMz1Lqr92nXxsqWgHoTsnoa1/5jjEpG0lqdXYwwROJv+Ukq
         mM1DRMhlB/v7jKK77hmk4KqeT3rEGb5g7d7kHtZgmDOGYx7kXm2/s3H3dFcFvSKiIch2
         iNlsD5C0anJ8ZNzb7kiQggOLrimAcceNCqF1E6LxhGWNnb8YlpxRD+ATQPJFvvDrEkOv
         WDhg0SxCCBb+gmChhi+4NAg97y1LensnFHnXyMd5bkCE+380oaWVztzi/n0uHXd20wVH
         9FPxJqqnkTZMKJ8CkVYjYeaY9U3G2NxZ2nCca9jrF0OPxGBNfEDTyYGNLhgYmQD3xYNY
         MF7w==
X-Forwarded-Encrypted: i=1; AJvYcCU3CBLLP+oEtXpikcg2znqPok6xN7FN1NJFSN8CgmncnHT2EJShRetPhTADUkAfdpdi9812yUMcGo2D@vger.kernel.org
X-Gm-Message-State: AOJu0YyWQwFsdfQ45UhY88rbh6jLWByzA9ZiXcu5/we085IjvZdBJm4u
	TbiDi3fc4Ef5RvdS3Gm0FtBitMngInO4QktXaEq4rhp1ebpNQMlLn+K9jbe/GlwqyCnKVwJ2/8m
	KPfPisaj1VPr8TrJ8uwNjAt1N8/ctyiTdtUlOfKKu3dR9kwWqY8rFCRUkdL64gHx+
X-Gm-Gg: ASbGncvH3vAOfGtOdaOb/4ZsL2LAfcYS2ACbYUFkL8u6gAmREVFuZeOHWdR2GkIA9Mr
	EjnGUWfc2s4F73+NuBoko/lo0FkGcg/whXSPu/EwI2wLuFpCrBQqqODm8fqDMt+erWONThQcVWz
	ijdWzX7PuuWiVyWAw1xJGMNHN267pr1qXyVwBuTGILSjY4Uzn4lgPWNPWWzxzyDbu2f9TliBC/v
	jFt5kxqbsKt6fqXR1buIj3yE1+dX00IhUkPGKhz1VtbUTLOx+qkN2k3crHZbnqCMbUPxUEVnfQO
	y4FjoAt1S5iHl9poDA9VkHC/pLMmRxVKzwOuc4piMByGz8aeIfHvIgVWD94N2d8j1zg=
X-Received: by 2002:a05:6214:29e2:b0:70d:cabf:470d with SMTP id 6a1803df08f44-72bc4f8b897mr161480676d6.27.1757419962214;
        Tue, 09 Sep 2025 05:12:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHH3Cw+Od0RoE8Fp9uL5sJELsFA0jgOTA/af0ZY80i6HBU94bkP8p/VVPDuABUvl27r4rhPnw==
X-Received: by 2002:a05:6214:29e2:b0:70d:cabf:470d with SMTP id 6a1803df08f44-72bc4f8b897mr161480206d6.27.1757419961635;
        Tue, 09 Sep 2025 05:12:41 -0700 (PDT)
Received: from [192.168.68.119] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3e75223ea3csm2441106f8f.49.2025.09.09.05.12.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 05:12:41 -0700 (PDT)
Message-ID: <afba70e3-8cf8-4b77-8c7e-65e1ddc3a8ad@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 13:12:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 07/13] ASoC: codecs: wcd: add common helper for wcd
 codecs
To: kernel test robot <lkp@intel.com>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        broonie@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, lgirdwood@gmail.com, tiwai@suse.com,
        vkoul@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, srini@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-sound@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>
References: <20250907112201.259405-8-srinivas.kandagatla@oss.qualcomm.com>
 <202509081839.R4vv3FST-lkp@intel.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <202509081839.R4vv3FST-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyMiBTYWx0ZWRfXxj7kIf9fUqRS
 EaDapqqzHXDngMznXCs6E8fvT8V+gFdLqpVfJYMumEF/UJSQDC9js2EJEcbmSvD30QVPDaRboGx
 atvSCZCKzssnbrejlDYdMttlEolCXSZVO0cddCCW8sCtsEKBqWDYBMxpHfGK4EANyJdukxlfEnW
 v/HFBUOS61Q2fHAyvzohgTdjzVJ1hnciU753eIOQI+er8WCDyN/2msJIo/qUFeAtn5PxlBxjGZ5
 u9fRlApxSIeHI9vVvbeRUYHdrGzzip3Uw8RE482zImZGxaDVcCR7WDl0KYew5GZ8TpPpMEDYI90
 TaadJzUijmf1mUVqcCEwAGpqKA6CJUGZj4h0t5p6TRBKc8GhpI3MRN13Phe8aSYwwaNTvcKTsE/
 2m4P0KYW
X-Proofpoint-ORIG-GUID: 6scW9SV-A5_apzLFcYc_RpbjvnFejPrk
X-Authority-Analysis: v=2.4 cv=PpOTbxM3 c=1 sm=1 tr=0 ts=68c019bb cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=anyJmfQTAAAA:8 a=NEAV23lmAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=i3X5FwGiAAAA:8 a=QyXUC8HyAAAA:8
 a=EN0wAbmSeUWIRxCTcSEA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=mmqRlSCDY2ywfjPLJ4af:22
X-Proofpoint-GUID: 6scW9SV-A5_apzLFcYc_RpbjvnFejPrk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060022



On 9/8/25 11:40 AM, kernel test robot wrote:
> Hi Srinivas,
> 
> kernel test robot noticed the following build warnings:
> 
> [auto build test WARNING on broonie-sound/for-next]
> [also build test WARNING on linus/master v6.17-rc5 next-20250905]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Srinivas-Kandagatla/ASoC-codecs-wcd937x-set-the-comp-soundwire-port-correctly/20250907-192533
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
> patch link:    https://lore.kernel.org/r/20250907112201.259405-8-srinivas.kandagatla%40oss.qualcomm.com
> patch subject: [PATCH v4 07/13] ASoC: codecs: wcd: add common helper for wcd codecs
> config: openrisc-allyesconfig (https://download.01.org/0day-ci/archive/20250908/202509081839.R4vv3FST-lkp@intel.com/config)
> compiler: or1k-linux-gcc (GCC) 15.1.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250908/202509081839.R4vv3FST-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202509081839.R4vv3FST-lkp@intel.com/
> 
> All warnings (new ones prefixed by >>):
> 
>    sound/soc/codecs/wcd-common.c: In function 'wcd_dt_parse_micbias_info':
>>> sound/soc/codecs/wcd-common.c:34:51: warning: 'sprintf' may write a terminating nul past the end of the destination [-Wformat-overflow=]
>       34 |         sprintf(micbias, "qcom,micbias%d-microvolt", micb_num);
>          |                                                   ^
>    In function 'wcd_get_micbias_val',
>        inlined from 'wcd_dt_parse_micbias_info' at sound/soc/codecs/wcd-common.c:61:26:
>    sound/soc/codecs/wcd-common.c:34:9: note: 'sprintf' output between 24 and 33 bytes into a destination of size 32

thanks, this is really nice static analysis,
fixed in v5.

--srini
>       34 |         sprintf(micbias, "qcom,micbias%d-microvolt", micb_num);
>          |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> 
> vim +/sprintf +34 sound/soc/codecs/wcd-common.c
> 
>     28	
>     29	static int wcd_get_micbias_val(struct device *dev, int micb_num, u32 *micb_mv)
>     30	{
>     31		char micbias[32];
>     32		int mv;
>     33	
>   > 34		sprintf(micbias, "qcom,micbias%d-microvolt", micb_num);
>     35	
>     36		if (of_property_read_u32(dev->of_node, micbias, &mv)) {
>     37			dev_err(dev, "%s value not found, using default\n", micbias);
>     38			mv = WCD_DEF_MICBIAS_MV;
>     39		} else {
>     40			/* convert it to milli volts */
>     41			mv = mv/1000;
>     42		}
>     43		if (micb_mv)
>     44			*micb_mv = mv;
>     45	
>     46		mv = wcd_get_micb_vout_ctl_val(dev, mv);
>     47		if (mv < 0) {
>     48			dev_err(dev, "Unsupported %s voltage (%d mV), falling back to default (%d mV)\n",
>     49					micbias, mv, WCD_DEF_MICBIAS_MV);
>     50			return wcd_get_micb_vout_ctl_val(dev, WCD_DEF_MICBIAS_MV);
>     51		}
>     52	
>     53		return mv;
>     54	}
>     55	
> 



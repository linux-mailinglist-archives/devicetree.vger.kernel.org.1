Return-Path: <devicetree+bounces-222309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C28ADBA8035
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 07:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1055C189AB7D
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 05:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE30E29C321;
	Mon, 29 Sep 2025 05:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TIHEcR5x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECF229ACDD
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 05:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759124643; cv=none; b=mpQx9YYzQNkKRLrftOAIBtu1CDp26pgCvcQjEWjQJonw9AuL5vSykyeNeAM8No5VebZpOYch3/jzzmcXDRV5bfWXpsvQW7M5mrDjIV910c600i4PL1M+bo15oaTjeS7P+r8ao/mXOm1yNzVKejnHojeqdZzKBF6ZSNbC9e++XFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759124643; c=relaxed/simple;
	bh=HNiufS4QgvTOpQO6FbL535zp3vDJ1un9gKIOCDv3sjQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YEG1qcZ5MAgNHOSg3cxj12VHmuvZfmALIdEomh7HqEoxW0l+VNps1lA1/gJdb7zizPmwLV+MqExcoVkFo1u/ac3ltbeMVj+V8KYtURKyMUEUnP6fBe4AFfAA6YuKBdWETOT88LI68T1QBXOE3LndnfxwyExg9+ON1VIVCpzU0cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TIHEcR5x; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SNJ3Nm004221
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 05:44:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0shxXdl1M5m67yzuv0GXcdasQMNMQSFmS4e9Kkqn+q0=; b=TIHEcR5xYDni68va
	mvFrbiD3QDfdFSWmiApYHdvRZVAKo3xoMvn7BRgUZyj96EoyHLHafET5Jk1vWyiz
	j8Kiw9bRu4abl1Cd4hFfMrUIwujTUOOz4xgETwjcb3bYRxze4ZzcStp6VEJbBGTZ
	3w15+a4okVTN5AN1oWwH91AV193U8Q3+UIyr3yLd9mrVdcganr+AxTWfKebM/RlZ
	uwUyHsq7fNC4TJVow/cGF47G5uyHUAgt2MoTORl3TvCE+gsLXDoX3hLJ72u0jL+U
	Pvt7hjNYdqpXx/yePxgZbNcnYkES/Q9mG79E7vUFuFl21W3v/HHZD3xbVdPBYluZ
	AeNgJw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93hbsnb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 05:44:01 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33428befb83so4852584a91.1
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 22:44:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759124640; x=1759729440;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0shxXdl1M5m67yzuv0GXcdasQMNMQSFmS4e9Kkqn+q0=;
        b=CdnX+NpJPy0Vroq1XiN84DWUSz/AaEJEhK45oN3EuFMWrwO8P3Hs/7RNm9DyQ9/SVa
         ckT78Ps9xtZhXSGNnRMK1yf60ptWxyxZTI80tA5idP3Z2qdAjHGaADeMlXot6WGQWwCV
         7Us006I3gLSdB19Ol1EiHdw3k2H8U3Y5GG37Lg9Dn2VCHkupSad9TTGP9sR5AwUyv+fA
         zu6+5fEBkQ4sRWawlQUlY8pVsmQ8AHwAsHw1q4lxmj57vpFBKoignNXDoCj9vFK0J8ob
         APu5QqmG3K6gVqL9arzo+3VO7V5VWJYyYshHZsiskIN5Gv7XR5veNI3OhaA2gpLGkXzl
         pYFg==
X-Forwarded-Encrypted: i=1; AJvYcCUY1MQglKlfeE+6QVSmwZDbNwyKwRj4gVjfFDiqBOB4uSOE50oXxKat6c6dpUWp4b4/Aof8Po7ngrK8@vger.kernel.org
X-Gm-Message-State: AOJu0YyTKDtBwcejBebJerE1tkJoYwWcUk9gJA4+OB/Is8QQ0R16q43L
	A5qxpovLsoJ6Xumds8CHPJcOiw3XmYtnZ04j8KaXfuZVOJpA353CzML87gqzYGetVwIdnnjNnlG
	u9DiOHQ2tmgvRCOWMhV5cxAAJ1/uQGD00Yz+8NGv+GLxyOklssY1UnK4pe5FRneHY
X-Gm-Gg: ASbGnctrAExBm8aK/DCrm6Je6M4wuisW95s3U32Ct1dHrCmgq0yXrMYmuX/f78flltr
	or3uEh/JRMtUcSh+vZOMt/0Ofb0ZmhfZ4jePYF8hxs8Nmp+9or1eWXrQbNzaVAMySeuO1kXCoMA
	D4L3qdOPdllOgPvPLktCqMdUOYFGOs5TS7gI+rCPsu+nXYLBK/YuYR/3ArC29/n754PrF1JWPSC
	+qAtVaIe1YyiQGigIlJBtJH4lPeuOXA5WWD6T5CEOBVAGnQpy3kHYC2AOo09OhcZ/I1o996Kk+s
	2ECV43qyUm+WqJIV6lSV4sCfAVwOlpIFKrvrCngySlcxFDDuph3PZiwV8qFb38gqSuBdc1BeST4
	+/FqTaPK342MAibCol14Vp1Rh29NJu0DHzg4=
X-Received: by 2002:a17:90b:3852:b0:32e:24cf:e658 with SMTP id 98e67ed59e1d1-3342a22cdc9mr16537638a91.3.1759124640452;
        Sun, 28 Sep 2025 22:44:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHl7IE2Pt6RQ3vYJq5zb9BDkApqE/UvUl6n0SAk0jFAYj2ocsRLqMrO3x/ZsK3UmEKV+StagQ==
X-Received: by 2002:a17:90b:3852:b0:32e:24cf:e658 with SMTP id 98e67ed59e1d1-3342a22cdc9mr16537609a91.3.1759124639982;
        Sun, 28 Sep 2025 22:43:59 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33435b4f180sm6031452a91.4.2025.09.28.22.43.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 22:43:59 -0700 (PDT)
Message-ID: <65338db5-d255-498f-96cf-bd037aedcc36@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 13:43:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] ASoC: codecs: va-macro: Rework version checking
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        kernel test robot <lkp@intel.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rao Mandadapu <quic_srivasam@quicinc.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
References: <20250924-knp-audio-v1-1-5afa926b567c@oss.qualcomm.com>
 <202509261315.O9CiiXjb-lkp@intel.com>
 <e7843f88-71d5-4f7e-9f99-df06630e02fa@oss.qualcomm.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <e7843f88-71d5-4f7e-9f99-df06630e02fa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfX7ChGAahoLinG
 wEtfwP5eWa36n1uzliau7nUyVfIEpCxjGIqEfD1ZMkkaokdvSerbYJpaHb555r7bP/bHPQwqLfs
 TWD6pJbouQSjRJAeJA6L9lyN0aIZIxkN1IbS/vVU5mwIDrhIgs2Orq+JrjIkN/hgd7mQEZCjx8T
 aZFcbK3W8gVR3RjH/5LnCquHyMx5gVNZRrlCwY6nkZnCXxQigPms63vafYho90F9XtNkxiX/ljN
 7b07VtF+8/BhE/gCA7VQjQ871nTg1/OsOGcs1qcwN4LmGYwfgv0ySFYbdknD2SsbSfqLfS8BjMQ
 ZlezFXTsnRRY1tjVEH6y8deBwFHg6XqqhAKu1icrunyiujJw9v9rK9uYEs0F4iufqX7DBfj0dUq
 BoFD7CoY+1upblJmDpo88Loma+hZTw==
X-Proofpoint-GUID: 6XfamLzYIRNjjEgl7HTCUb8ZFapc0qPo
X-Proofpoint-ORIG-GUID: 6XfamLzYIRNjjEgl7HTCUb8ZFapc0qPo
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68da1ca1 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=i3X5FwGiAAAA:8 a=QyXUC8HyAAAA:8 a=H6HILBvNmDOxdPU26TMA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22 a=mmqRlSCDY2ywfjPLJ4af:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041



On 9/26/2025 4:50 PM, Konrad Dybcio wrote:
> On 9/26/25 7:36 AM, kernel test robot wrote:
>> Hi Jingyi,
>>
>> kernel test robot noticed the following build errors:
>>
>> [auto build test ERROR on ae2d20002576d2893ecaff25db3d7ef9190ac0b6]
>>
>> url:    https://github.com/intel-lab-lkp/linux/commits/Jingyi-Wang/ASoC-codecs-va-macro-Rework-version-checking/20250925-080338
>> base:   ae2d20002576d2893ecaff25db3d7ef9190ac0b6
>> patch link:    https://lore.kernel.org/r/20250924-knp-audio-v1-1-5afa926b567c%40oss.qualcomm.com
>> patch subject: [PATCH 1/5] ASoC: codecs: va-macro: Rework version checking
>> config: i386-buildonly-randconfig-001-20250926 (https://download.01.org/0day-ci/archive/20250926/202509261315.O9CiiXjb-lkp@intel.com/config)
>> compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
>> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250926/202509261315.O9CiiXjb-lkp@intel.com/reproduce)
>>
>> If you fix the issue in a separate patch/commit (i.e. not just a new version of
>> the same patch/commit), kindly add following tags
>> | Reported-by: kernel test robot <lkp@intel.com>
>> | Closes: https://lore.kernel.org/oe-kbuild-all/202509261315.O9CiiXjb-lkp@intel.com/
>>
>> All errors (new ones prefixed by >>):
>>
>>>> sound/soc/codecs/lpass-va-macro.c:1479:8: error: call to undeclared function 'FIELD_GET'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
>>     1479 |         maj = FIELD_GET(CORE_ID_0_REV_MAJ, val);
> 
> Jingyi, could you please add:
> 
> #include <linux/bitfield.h>
> 
> when resending?
> 
> Konrad

Will add in next version.

Thanks,
Jingyi



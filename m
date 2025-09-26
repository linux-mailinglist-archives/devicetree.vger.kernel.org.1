Return-Path: <devicetree+bounces-221794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB202BA3023
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 10:50:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65B09167EAA
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 08:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3136C299AA3;
	Fri, 26 Sep 2025 08:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KQeg2Vsp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903D526FA4E
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 08:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758876610; cv=none; b=IVPYAa5sDizIoAQvFMBuB1nXNm+iqHMCnJw/wfqHDININypAIis4W4NgYjbtBDwEMdTE59majnPJ2JPR37LdUIVSUM0/jMC3gJDIsk8zwCUDyfN9TULj3fwiuyDt/GzJq2yE+zHpwsO26+V6gG7In5p4OOsfEFxEYrZf2qmW8p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758876610; c=relaxed/simple;
	bh=DW5PR20rrpRjozhjmQF7SX9wg6GFQc9bhuXeEh/lm7E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SD9wJYVNyuN3cVz9iy8jUeMzLTyQj7bwrt7xwFOaosizM1t+glrb5AnywMPflm3g+UElKPM1iIz/GVVy3RksXIvq6HqL8PflO2GIgNywZoHGmpZyv3UQBZFtzLCup6yxIy3gc3sxFKBrqk5q+VeYDvIX5aZB37ES6o0Udy/5y94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KQeg2Vsp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q6w5Fc014738
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 08:50:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hAvJmzrwoSb3evK5QrOHasbm0i6ySDURtAIAeME4WEE=; b=KQeg2Vsp8pY7kAkX
	m6rMUbmJSMEIKwgoIERa7LulLjSLELt8hiu1+IYMv00GPc5ieNf3NAF40MP3wS7w
	dTFRo4CgdmzXsaN/3r68cQKzeMyrViYEqU69TrIrqEfIVUDA2OAk9PvPSV75/YRC
	js4NLs2Wi36DbK7EtFjIBXupnVnxtU8IQYHl38HwRIw7hdltPcaksqAF7ahiRnCi
	EPee4tLw52eu2eNitIONh6+DOvniIs5W/h75KjX5gpG5M48EDuJhD6DgXuOwz9qI
	7emCJKiJNJ7AllZQPh2QgkIEm+OEcpYWj/Mw8OXl9VgTZ2Nf8iDDHcAYpx9M3uXD
	KVLVdg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0ta6ft-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 08:50:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e8707701f2so62831185a.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 01:50:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758876606; x=1759481406;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hAvJmzrwoSb3evK5QrOHasbm0i6ySDURtAIAeME4WEE=;
        b=aDOMc4DkAcsiqZJTkKaLlzu7y5fMgOaSaGSTVfUOja1U4hc5wfPs8RyppbxZIO73iQ
         EbSjXGxzr7w8Jk6cuPjY/zoEZaB9iys8QfX0lA5RGjE+n3PtCFshYBTqKno6bC2wuSJO
         EKSt8n9wGxuubyBDkT8Dfg7785TKJ7BesFJ3CRbD6qqdqfOKVyyUZnsl/GzqN1oIdcVT
         baSKopBDoW0Cj+wI0mI//AHkZ85HnoYYPu6Z/3YaeXZ7eXSRgSCWqYGP4y+aqSsvzzNC
         b9PYufqxxuY83WHPPyry1P/5q2y6J20H1jjTFQHkkSjW7kkQ/oeMOS1TJr+c+e22G7b2
         SC/w==
X-Forwarded-Encrypted: i=1; AJvYcCUi9Jyp2YMXcSUamGGY1EFjjYFC9GgfMcMdxeTo82KizGTN1hXKerXW0Y0TZO1v0q7L26/alRs6IBW0@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt8ek4Bbx7RMyeqMGkTwAmzJ6H6sN1ilFYU+hzmvwXds7nfFtq
	1DczEi4E0yPUffohR+vwm8weAfsTNAH8k8QZ0X8J1PHdKJFwuW91HJPhTj9x9zx44R6AoWYxw6p
	JKzVGenz0p4KL6uomSSXIEjZEJP5WUn9Re1RdvJSu3aO43W7oeiAGXO4xwLm80qpUlYAwng/Z
X-Gm-Gg: ASbGncvt6fjPI63RNqBmezg2DfXpQ5g2WgGeEplb01mMKIq7GkyqjC3VHpTKOlfaW3B
	Qs+Etg4A3pt8X+AdD9nkqpG5U+f40jQ124gbmIemHS7JHijrIxAQjBkygOBEXhGG99ddqMUslOS
	V6983uQJiCaissW72FtYYkm1580wZimHr++AJWjRNl14ldzh1e4qXxkU2fQfgHin+62QfAAzRUb
	HMZ3O4/q4UOcRffPJ+xYbIfWyH/WCIX7eQa+Qlt4XWsD4BrxX8EkUib4QuIMyMdGFPpFsZMWe8z
	Er1393pfR0VpOEzyJJZxWpw7CVsHcH0PoXHIsfS9gGDAq8E2zFB9NWULLsUD+Wkr9uFratD6x/I
	aUC610vUtLDShq9Fm1b1EBw==
X-Received: by 2002:a05:622a:1101:b0:4dc:fc58:c50c with SMTP id d75a77b69052e-4dcfc58c83bmr20483331cf.5.1758876606317;
        Fri, 26 Sep 2025 01:50:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEiWvsH3XhfOSeK3PolvaeTD1lJD0k/Gm0XDb40I/xEqlYRxnruYGzyeye0H22WTBm31aZrg==
X-Received: by 2002:a05:622a:1101:b0:4dc:fc58:c50c with SMTP id d75a77b69052e-4dcfc58c83bmr20483151cf.5.1758876605736;
        Fri, 26 Sep 2025 01:50:05 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f79besm326034066b.69.2025.09.26.01.50.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 01:50:05 -0700 (PDT)
Message-ID: <e7843f88-71d5-4f7e-9f99-df06630e02fa@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 10:50:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] ASoC: codecs: va-macro: Rework version checking
To: kernel test robot <lkp@intel.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <202509261315.O9CiiXjb-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: pekuzpl-Kme9huh3dsZPE2as-JW5wFOt
X-Proofpoint-GUID: pekuzpl-Kme9huh3dsZPE2as-JW5wFOt
X-Authority-Analysis: v=2.4 cv=Jvz8bc4C c=1 sm=1 tr=0 ts=68d653bf cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=i3X5FwGiAAAA:8 a=QyXUC8HyAAAA:8 a=zXO_E9iLSFoZqPovHQIA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=mmqRlSCDY2ywfjPLJ4af:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX5RB1G39rAFhb
 VXNaSEjxT66tF+9Y/7VMnMpEDsFXfdL7k/erRSowZ8R29Kfl4cet5IRMM2QThwiaTQhGnGFywyg
 ByZm6GcWy9vXmnxwijQpD7tbhJ6GBDFrA9vaYPBBUdm3p9lCo7MZZJKSqluxvnnBleUDW+52wC2
 jjEqUv0KTYb9bOX+7ffhNIRJiM74KCMGs9oprsaC9+95TS/t06BYT1s1SiS0bXjSZubNOOwOksb
 64NLPien5xigJnxjkQf1PcSs3EOZ9NSvI3xAh4eWZmRRHDLqPTw/KK5jGsI157v1diBf+/x8pQX
 yjER5iBd+B84MIiMtyHlS58YPTmF95xTqJsohEOgX+79mfrz9ZVAAuiXkGbUtZGfzKwkloFNmGg
 d2rq1IMIkh6WiW1Kt7OQIlff3sFBOg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On 9/26/25 7:36 AM, kernel test robot wrote:
> Hi Jingyi,
> 
> kernel test robot noticed the following build errors:
> 
> [auto build test ERROR on ae2d20002576d2893ecaff25db3d7ef9190ac0b6]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Jingyi-Wang/ASoC-codecs-va-macro-Rework-version-checking/20250925-080338
> base:   ae2d20002576d2893ecaff25db3d7ef9190ac0b6
> patch link:    https://lore.kernel.org/r/20250924-knp-audio-v1-1-5afa926b567c%40oss.qualcomm.com
> patch subject: [PATCH 1/5] ASoC: codecs: va-macro: Rework version checking
> config: i386-buildonly-randconfig-001-20250926 (https://download.01.org/0day-ci/archive/20250926/202509261315.O9CiiXjb-lkp@intel.com/config)
> compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250926/202509261315.O9CiiXjb-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202509261315.O9CiiXjb-lkp@intel.com/
> 
> All errors (new ones prefixed by >>):
> 
>>> sound/soc/codecs/lpass-va-macro.c:1479:8: error: call to undeclared function 'FIELD_GET'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
>     1479 |         maj = FIELD_GET(CORE_ID_0_REV_MAJ, val);

Jingyi, could you please add:

#include <linux/bitfield.h>

when resending?

Konrad


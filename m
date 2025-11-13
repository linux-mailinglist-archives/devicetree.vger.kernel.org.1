Return-Path: <devicetree+bounces-238144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA787C57BCC
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 14:42:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B4704216DD
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 13:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 353501E7C08;
	Thu, 13 Nov 2025 13:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dCTchLVV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aTu4s0li"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8235C1C3306
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763040787; cv=none; b=W+GH0uR4NY2x9/kARiBrD4G47WPNhR2owvTszSdh+2cPQZrBgIMPG8aLt/I0LOYPMDHStvMG3dEmSyOG/kD/A+ZgF9JiUdxKkxA3Vq7wMms7gsLFB4GI71u+pfWaWwkuy9ki/vyf/HZ2M1KpU4Jca5aNQj2fC9NZoLtIW73nr3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763040787; c=relaxed/simple;
	bh=WXUFQbgGI72BGKFWLLzMLBxPdA8zEK4LiioFwjl4y0E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QXJc+pxY5A8WzN61n/YypHpaByJONI3hgth+LZkmtMeqr4e0dLcR9R5vhM+JcZlgPu+LpUOijUYY2FT9OXhnWO2Cnx1fCsV5wHkWq2e3ZOEHZatR8ml4Yov+FGeXxtXrV0Kx//7rdDMMfZPGFA5Roq1QSPR2RuaebFyYD2k9iBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dCTchLVV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aTu4s0li; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADCrTSH3443198
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:33:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wNLEUtImMXvAmjKIRtueCGZIQNgFOT3pJRe5fakSwLQ=; b=dCTchLVV2jAjgWiY
	ICFZIXcCA1dJnIdIViz48q5cmif6mK4Tv0rs91XKwf+WAKqP0coiOozMAqCNtf54
	v6WWSIzwslz5D+1JkALoTwwk/ae6y6C0EuTKEYl1O4rTOgn9jwhIMXqcJKyIBLLY
	GH+s4I/2nY0dwLFEo34gHaWMjv5jNRb9nyCg3ZtM58/JWNfCxxyRH82pTPnFmMUq
	7osKcoZo/tExDV4AhVEQD/W6FWf5rXTVCv2+piy1J93B+Y6hkdoZc9qgOc+61TyO
	XCK3H+LqmC4PnvDoQJ9QUGE62ObKb9yqGEqPJM9kWCxuO1TDgaUYSBWnqQ0cRRAI
	BI+hQg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad9789ex4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:33:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e887bef16aso1203421cf.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 05:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763040784; x=1763645584; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wNLEUtImMXvAmjKIRtueCGZIQNgFOT3pJRe5fakSwLQ=;
        b=aTu4s0liCCOXJWCgZfWkgvtRfhlA0G3YdUwUC+PwMG9tA1xiTX45n3/fTyPfiPXIr3
         uaceywgYapojeSjAtGFeImtEbGOnFfIzFk79uuBKPveBX6zqexSEAqgDUIvXb+W77jl/
         7p7L96vV+3udHeVtF863MaiBVo8yJiG+Oi/7vqAf0s3aoBfhFKQRFzvWLLw7jkBo4mtg
         V/2kubr76ihHCr6f11nt6c948vJPZZDOW03UqCCRy2eQrGTFvxkhEhs7kHMp5TX3/TYO
         lCfSdQl/RktD0VPzDzDeGJf/BbM74uwle5Hr2rCKZESdmCaO1P9XFrxEBf4odn3t4l+u
         G8Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763040784; x=1763645584;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wNLEUtImMXvAmjKIRtueCGZIQNgFOT3pJRe5fakSwLQ=;
        b=BDt8wLq9MA6WlcDL4RlffS9zGJGcn05FuJubEnDUmbKCmvP1Z+CST+yItpaU6zIxAl
         8GPfkFX2uV/l7SNaI4LR3i5O3ExbWc97KNUUUEaL1qOIkJS0CobcOn6nVfxmDnT1O/of
         BBIXjjoEt72oZGBbhAQwlC+bwXeDU/2VP4gwv6hNeXLKWbkwqTuEq/Y9CF9HA4lE1TVC
         wNjHbAiBo5Dw2ifMdLc1ONVv20qAKHkdhC+MP3tyQpewav5XLLHNNpfWZz1NVEIzQePo
         vdTQXJocHR+2kEK7RO//XucgxiD4OyAt/zmyJcngWZPgN/ITPbP9gOYOmC/2myRS4iN6
         ObEw==
X-Forwarded-Encrypted: i=1; AJvYcCXx+343/dOUf7sZjYTCBUBUce8BnRXdqcs3s/Gs1wVyW0/Tn3Yv1bclOYKiDJiVJXFOK4HxdWkYbtK/@vger.kernel.org
X-Gm-Message-State: AOJu0YxfAXrvKFoG8XCGjSzEN7wLF2RRMxEfvGTYolTKIBDVEyi3t0rY
	vPPYmqho9YHyX5uyVUWxfDPI2WZzbZyKP8Expz4nK8N098BR5pfaqFzqm2c6gwRsNV8Hyr8VEat
	0T4gQKm+RVKhElQExaU2xZ15hrmaeHmTpslpGal9QlLteZDxwhDF2cE2V+SK4gcHT
X-Gm-Gg: ASbGncvPyMbf6ZxT8NH4Z6yD2KT0Zw2kLJqmlE3eyEhHzK62LRddMKAV3JEPq9tkqo5
	DC5DdVARN9LpuBzYyIXdw6xUfz9vImpdnWq//uz04M8bILpTdshjerp2C0Jk3237aKzVXvyvTid
	Hwpy6WkVvit43KOhjZQ9/4mBjaLM3F7Q7nPPhYHVxRm47N21lRLvQkhWeqReU8KwwrSRxfrOfr5
	iq39m/RscG9FHYyPPOXr+Gbr3yib/mRxyjUuGCF8T7IJilB5U9k5z/O22kWS8IEI3bFjnXTJzWN
	d/OPzgwni9ZLtGbbgcNf/AOly9OL+B8Oq4atQbwJR7/vQU5iG9c0nggDYcrOLZv0pH3BQ02OPVY
	4Ux9oJ0ag7JaP1Sval6qI4TdpVTfuadwskAjEKP/c+vQWopfG1DnvK3gs
X-Received: by 2002:ac8:5d8e:0:b0:4ed:b9ee:3ce2 with SMTP id d75a77b69052e-4eddbdae8demr64145981cf.11.1763040783743;
        Thu, 13 Nov 2025 05:33:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGrzhJHhVjwGaQu/IkcGeYInBcpQOo8PGlB0mVpgZ0Fcc+3wNub2niPYVso88lX2dAHMTacPQ==
X-Received: by 2002:ac8:5d8e:0:b0:4ed:b9ee:3ce2 with SMTP id d75a77b69052e-4eddbdae8demr64144061cf.11.1763040781802;
        Thu, 13 Nov 2025 05:33:01 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fd80a11sm162333266b.39.2025.11.13.05.32.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 05:33:01 -0800 (PST)
Message-ID: <cd7c0490-a2d6-4885-aa36-ee1492f107b8@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 14:32:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/8] net: stmmac: qcom-ethqos: use generic device
 properties
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vinod Koul <vkoul@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Jose Abreu <joabreu@synopsys.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Matthew Gerlach <matthew.gerlach@altera.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Keguang Zhang <keguang.zhang@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
        Romain Gantois <romain.gantois@bootlin.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Heiko Stuebner <heiko@sntech.de>, Chen Wang <unicorn_wang@outlook.com>,
        Inochi Amaoto <inochiama@gmail.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Minda Chen <minda.chen@starfivetech.com>,
        Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>,
        Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Shuang Liang <liangshuang@eswincomputing.com>,
        Zhi Li <lizhi2@eswincomputing.com>,
        Shangjuan Wei <weishangjuan@eswincomputing.com>,
        "G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>,
        Clark Wang <xiaoning.wang@nxp.com>, Linux Team <linux-imx@nxp.com>,
        Frank Li <Frank.Li@nxp.com>, David Wu <david.wu@rock-chips.com>,
        Samin Guo <samin.guo@starfivetech.com>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Swathi K S <swathi.ks@samsung.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini
 <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20251107-qcom-sa8255p-emac-v5-0-01d3e3aaf388@linaro.org>
 <20251107-qcom-sa8255p-emac-v5-2-01d3e3aaf388@linaro.org>
 <21a3d269-76e6-4da9-aa25-bfd1fb6dfb07@oss.qualcomm.com>
 <CAMRc=MexMn_GSC2EtMek5hDRLjGYA5HKM8ge9vrxw1pYDqPJgw@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMRc=MexMn_GSC2EtMek5hDRLjGYA5HKM8ge9vrxw1pYDqPJgw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDEwMyBTYWx0ZWRfX85EZ1JmV7Tqt
 NOX/8eZZnpl7pB+YrJwJWzUSOnkdo4YJNwP7sUKAhJHEM1I1y7pr+ToxLKqIB79eToSVtbh55/w
 iTGk6Srb7uU6QU6Ev83SoC1DusO9TzFJsGZDeTSN8mAnlXchszwdx++2bSgzTuGU6BB1mNsmSvD
 qPvgbPD4VyMszMb4iViWW2kl/mXAhLbrjQMrwpuS3+cZhemblA5ao1tnbNvnfrm6Lexf+q+IPGs
 T1dMyWZO7hvYOH1ienr07aGqek9Vt/XsDhI+upVh/pAy02tcH4CJYA0yzBcdK4oiLROwin955dD
 tIJBIxSU1yjoLQzWCxC//lqIo2AEu22soa+k6hkOTGGcDoZpFkdtULGVs11mQEuXnpbT6C1sGNS
 L8nAjrGXMeng3ZmdPGulVA5huSmL7g==
X-Proofpoint-ORIG-GUID: bA9PT-Gtwt2zxT89Gcb5hnTRzrwgPVaJ
X-Proofpoint-GUID: bA9PT-Gtwt2zxT89Gcb5hnTRzrwgPVaJ
X-Authority-Analysis: v=2.4 cv=PIYCOPqC c=1 sm=1 tr=0 ts=6915de10 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=Pp6BL5jzwldociJZjw0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_02,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130103

On 11/13/25 2:18 PM, Bartosz Golaszewski wrote:
> On Fri, Nov 7, 2025 at 11:49 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 11/7/25 11:29 AM, Bartosz Golaszewski wrote:
>>> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>>
>>> In order to drop the dependency on CONFIG_OF, convert all device property
>>> getters from OF-specific to generic device properties and stop pulling
>>> in any linux/of.h symbols.
>>>
>>> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>> ---
>>
>> [...]
>>
>>> -     if (of_property_read_bool(np, "snps,tso"))
>>> +     if (device_property_present(dev, "snps,tso"))
>>
>> This is a change in behavior - "snps,tso = <0>" would have previously
>> returned false, it now returns true
>>
> 
> This property is a boolean flag, it cannot have a value.

Every DT property may have a value, so this is not as obvious as we'd
like it to be (IIUC - unless that changed recently)

Konrad


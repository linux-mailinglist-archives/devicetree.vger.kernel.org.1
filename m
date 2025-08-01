Return-Path: <devicetree+bounces-201328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E42BB1812F
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 13:37:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFF26581651
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 11:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D58F24679D;
	Fri,  1 Aug 2025 11:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="laVbsFeT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F175F241663
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 11:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754048225; cv=none; b=WNdpevOFqO7+LswCo+jruy2kc8qlnliu1zguNfEYSDr6eZvrZKVXDvARoChGPSpI1okKa+d/q2gh4UvcBhnopmB9XOjQCv5SpTpFroLBoTOsigWbOM8+uXYcOdWnbHIMEgWd0OLiNfuKJ2UrXv+PPaBcKdDgMf8AbHffGPN3T2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754048225; c=relaxed/simple;
	bh=S+OUPbutuw7eeLKJnK8PAXGqLsNg1a/WjTPWGFI+L2M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G3jmcNJBwhCIkkukApcb1eVp2ldRYJEv+aScnkVclSgO1YuA6SF5EjKcvmK/6bizBrzEqTxJhQ7oD86xhn68oJssg8gBeqztsgGSWi0FJX2aAmD0OtFlmO8pxuc0Azue5Zx5p1nAq5stRAPMGAwtcIrwSAmrPBvqZJEzgvXS5jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=laVbsFeT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5719EhRP002538
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 11:37:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ib4lVo6bA5cxWNHRPcfBAhasx6+Tv4uNCb8kn2zACc4=; b=laVbsFeTSRGnvXcG
	VQ2dm5mVML9HBSszJSDpmG0jaePCntW0E7z1mjKqtg6++Z8M5HFFov1sjM/X9D2G
	Nkyl2xrjKsHMMLVk50u2aG46qOUQ45/z/qpRp8VKWzRkHc9hQUIZLXI14r4wvrH+
	WV1Z9xgZ7lYxJmlU/UJ9qzE2KefWiCSKps3+QqzjfxonfEFUamwEs+a1+2kOIGcu
	ofac97tI2++OhGEXEfinA9bnQfmZkWXzufN8lb/uBUEtqby9IQ4H/3xZ0XOJ0SZf
	fErNHoj4BWUjLc3siW8Qws/nSq9LSKUsgkheVYL2HdcctmL4Wiac7NJVOjrbZuO9
	2rFvag==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbmbgb6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 11:37:01 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ab60b83e11so3491511cf.1
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 04:37:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754048220; x=1754653020;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ib4lVo6bA5cxWNHRPcfBAhasx6+Tv4uNCb8kn2zACc4=;
        b=krrzWnB7Yx2cgPZ0Ic1gh1eMK1Ra1l6t+WREyj9pyWX76StXeZzTmfo9hlwaXQrY0z
         ReqTbOv1oDy94WBoRFlytZrNZAGWgl0Wu9fHxbCkPvxo+cCfZ0qtafaSwdx/JqKjcnmp
         6nyr0Km89U3aiOCj9ZewdsQJUx12je7ChWytZaM/j4j/1hcgvYcgSZKqwmAe0aeDyB3z
         Lt576o9rAW/xJs6DH3alCsW3rbGQRTAZkjBUS2FgDT1P5yK9qEdQMHE2M/NxsHcN80SA
         jFPokLsNOODU2v9abxZsjbCdQ3izGKlREVg8OA/RNAbTl3p7L6pA0Dj8gL0PzblhON6e
         qcyA==
X-Forwarded-Encrypted: i=1; AJvYcCU0v27XKskAUzUo6cfXJQpby4JPQ3/WWM4Bpcgrxkv9pAOkI94yZDgCQPmvU7bOlumDv+TuYnnYsjyW@vger.kernel.org
X-Gm-Message-State: AOJu0YzkGX0vmhlzF1SrXaOo8ffRLss7MeOjxxgMkIEqdyE6qPHZEXI8
	Fw2bO6AKhaFIbxOMPzMqjK44dtc7N2Y41uF79iY3GMaD5X7Uk15OqTWry6CMx/Towbiad1uA+Yi
	uhjSA9zCp8Wgmv/HrORpsnXgDdPamKOARrULpNnFGSZsD3/Ew1qTG7l5BULkfePHA
X-Gm-Gg: ASbGncsw1SKBxHvVpbAlm/yFq0u94k+reRaVTg7YiM6eKPBx69Q8DIqRCJccwTB2nuR
	hl4sai1zei9LJCt0dwDRaxKy++YcYPhRXzjq1jz0wdmiAiMJmv+bCjmzdrn25tCxgRFuBzLJSCS
	0f7IwhvUBpT4YsviYW3zY9mq3Yq6Ox9y6xvo2M5zsoiIkOdPKfvrA0X8Jp/OwtQFwofRTEXH76w
	CiFBeI8bI4BIrPS/0O6fjTUK1RKZ5eAstMPDYPUhi7xk8x42WOFbShyOSysIKmodAkigosakC21
	2no+JrFV+PlCvrxyma8bQQ23JeasAsYCZuHTMc02Uu7wgudrkEHHVXR/bZ5a0LvFIbn9Gnssimp
	rGYNTm2lwxjgY7mXIyA==
X-Received: by 2002:a05:620a:469f:b0:7e1:ba5:6ee0 with SMTP id af79cd13be357-7e66eec27a7mr809610485a.0.1754048219803;
        Fri, 01 Aug 2025 04:36:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGISRK3LCNP6LCJEXt6pbFs22LciSzSSA6wDhhyR/ABPjUX2hHCx0gXfYiLZNNNjNHw2rNI9w==
X-Received: by 2002:a05:620a:469f:b0:7e1:ba5:6ee0 with SMTP id af79cd13be357-7e66eec27a7mr809604985a.0.1754048219285;
        Fri, 01 Aug 2025 04:36:59 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a3981sm272166466b.35.2025.08.01.04.36.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Aug 2025 04:36:58 -0700 (PDT)
Message-ID: <a1040dfd-00be-4f20-92e9-533a74803e9d@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 13:36:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/6] dt-bindings: dma: qcom,gpi: Retire passing the
 protocol ID
To: Rob Herring <robh@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Sven Peter <sven@kernel.org>,
        Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Neal Gompa <neal@gompa.dev>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
        Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
        Viresh Kumar <vireshk@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Frank Li <Frank.Li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Taichi Sugaya <sugaya.taichi@socionext.com>,
        Takao Orito <orito.takao@socionext.com>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?=
 <afaerber@suse.de>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Daniel Mack <daniel@zonque.org>,
        Haojian Zhuang <haojian.zhuang@gmail.com>,
        Robert Jarzmik <robert.jarzmik@free.fr>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        =?UTF-8?Q?Am=C3=A9lie_Delaunay?= <amelie.delaunay@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Chen-Yu Tsai
 <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Laxman Dewangan
 <ldewangan@nvidia.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Peter Ujfalusi <peter.ujfalusi@gmail.com>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        Michal Simek <michal.simek@amd.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Saravana Kannan <saravanak@google.com>,
        =?UTF-8?Q?Martin_Povi=C5=A1er?= <povik+lin@cutebit.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>,
        Viken Dadhaniya <quic_vdadhani@quicinc.com>,
        Andi Shyti <andi.shyti@kernel.org>,
        Krzysztof Kozlowski
 <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org,
        asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-actions@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
        linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
        linux-sound@vger.kernel.org, linux-i2c@vger.kernel.org,
        linux-spi@vger.kernel.org
References: <20250730-topic-dma_genise_cookie-v1-0-b505c1238f9f@oss.qualcomm.com>
 <20250730-topic-dma_genise_cookie-v1-1-b505c1238f9f@oss.qualcomm.com>
 <20250730234631.GA1899887-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730234631.GA1899887-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=688ca6dd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=RNpRkCq-AmGuj0ryOp4A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDA4NSBTYWx0ZWRfX6dGqWoON1uAz
 UM1tnziJQ12WiSZ0X7p2tEqSJ5+sNWITExu5v/CtLMjnZy3DVTHeAjR1BU8Hh9DrGT0y6IKj0sg
 Ntl+EHfTBhE0lPurZXITE6aXdBLchyDyscx+XTDyinuygJEWNJ8tVcd3eIZ90K/lLwIymqCl+U4
 HdtI91XDZZXD7V02SLnTmUJ9/7eGCheZndXZq1jnKwjbBABDiPCHxnjHgD1Qy+DbP408FeNdquM
 mJaEY+EgvT/KSNhycHjF/cm+VJBOZufK8rta0Zz2NsFofDq5zTQZ9nEomNz+Xkea8Cg6WqZE2ES
 0g+Nmz4A4oUGr77ChD/UCw3suYkax09OjWVmI5uYSA9bi6l6nXRtKbH/XV1c+Duq48oXt355ooO
 WPFNFkdzNOhPXJU0KNrlL6Fx38RNWsY+ZrIBq0lwR6p9Om8np6svTjZHaGZsT5bhlgEN7c6X
X-Proofpoint-ORIG-GUID: Qx96edzJoohZhJgOc0EgA1k_qCoX29cO
X-Proofpoint-GUID: Qx96edzJoohZhJgOc0EgA1k_qCoX29cO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_03,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=876 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508010085

On 7/31/25 1:46 AM, Rob Herring wrote:
> On Wed, Jul 30, 2025 at 11:33:28AM +0200, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> This is a software construct that has no business being expressed in
>> dt-bindings. Drivers can be constructed to retrieve the protocol ID at
>> runtime or hardcode them per protocol.
>>
>> Remove it, as a pre-requisite for further simplifying the GENI
>> bindings.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
>> index bbe4da2a11054f0d272017ddf5d5f7e47cf7a443..745613b93b210afd38946030f7477e91e08c907a 100644
>> --- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
>> +++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
>> @@ -61,14 +61,13 @@ properties:
>>      maxItems: 13
>>  
>>    "#dma-cells":
>> -    const: 3
>> +    const: 2
> 
> I think you need to keep 3 and note it is deprecated. Does an existing 
> kernel support this being 2 already. If not, ABI break...

Hm, I thought this is a case of relaxing the requirements, although I
suppose some software might have had a "if n_cells != 3" (and not < 3)
check

Konrad


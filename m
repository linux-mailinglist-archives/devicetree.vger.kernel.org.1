Return-Path: <devicetree+bounces-260837-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPNpAqI+e2mNCgIAu9opvQ
	(envelope-from <devicetree+bounces-260837-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:04:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 59999AF5AF
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:04:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2238B3060192
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82428385522;
	Thu, 29 Jan 2026 10:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EQyjb0Be";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hpUsqDDW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AD03816F1
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769684369; cv=none; b=B5CPaFJuMjgo+TkT3AqrIHcp1v05+SsjnJ0ESo/tQsPnqwxGqjJtwL0e5yoTpjpwYSxeydEUAebSaK4GbQjQ1B5FripOG8fCFvA9k3Xxe/Ms15aCvDF62y39vZbnpssIISoJlX7Q58Q319dsNqBYMYQQ3Vc2gYmsXiQKN+sVl1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769684369; c=relaxed/simple;
	bh=4ZFEp9VmHn9X5nm2JYDp3tmIrZL6+S5eERUFEhD63PE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pe9kbugoMrfClvEVc5dKJv88eDUNBHDAJbvDrjjaLCtBkbha3p1sBlQyVqwMhkVO9dVXVyGRFEsonEFYYhgQbSnicUBOYJ7zE1Gj5d2ghiAn5YLUhKti0/h3KVTgrENNQKvO8XajdaiGf1avVrWE88PFz+6XL99OhcxSZn2jBW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EQyjb0Be; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hpUsqDDW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TAPwWd3642956
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:59:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NoJe03w1ue4m/+oib/nWttjy
	gth9T6Vgc5MTYd8xNvQ=; b=EQyjb0BedpLhpSDTNqwmukLOfGNmCZvewmtRp0qG
	6E1sjiL2JZm/tFBsDX6QcXnsco3aIRG8CVqsXqwtZNzjmbYjEj+Pmc8rVMi7nex2
	VsuGHpp/mjRUG14fFN3JbrhFCm5WQBh27vM1AfIKwR839gEuKt0iMaRn7Um7G+yU
	YVQo6bdIFatSfXyjeKDxDoqxUil7KWTUan8jC+979XG07SPFPx94hKW2Pjck2/Mh
	7gxps1QD10RRHnk5lo2sUjXlKVxXSAzjs/Hv5vPDr8HpaLZXAzzVvXmgG1UCjDre
	uDyYNX5zELuEr6wsyTdtVXm2rrNG1iksmWYU0/voQRSPMQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c05sr0319-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:59:26 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70b6a5821so177062585a.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769684366; x=1770289166; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NoJe03w1ue4m/+oib/nWttjygth9T6Vgc5MTYd8xNvQ=;
        b=hpUsqDDWfh51Cmm9fQf2MeMbWPiDfC7l5iQ/WnE/i56v32f3NQAHer4O4CLhSbydce
         2k7PLCxfblGlLvtxsdUN9VlidadnLrgIK6UFAA8uhGvmNxOvQPmD8fG4wiLkXXelHPaN
         5ipRJIz3vkgLJuRpYNujCKgFH4+UP5tto91g7x5h1664m8fhKW4xjRd47khKtOnlTSJY
         FjSscc4uD2akCCAioFXjuFJtyLd1+sNqt4mzOk5Twhg7AdnaVQmewt4qQK1IjFiijuDP
         pbxwfO8LqvGmaF3fDhlcpYjCIbEMPCDrKBop2L2elDfSn8iHG5PcGQOkle42KedfvfvN
         tKFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769684366; x=1770289166;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NoJe03w1ue4m/+oib/nWttjygth9T6Vgc5MTYd8xNvQ=;
        b=oSZo6SeZx5q/6tBy0HrIs5rG8auyhUjaGRX9KTEf6cgkkSunGGoVz+KyStS1PNgmPX
         PlceKSuNi9Q1Sm9HJIKKOrySR4WczuRoPJnQbFwYvrdwGcvJ1Q0QQEZb35mRSUPBzWYd
         iR1bjwEtVa2W850L13x5EFh12j1pkXe3SpVxHJlsHu1vq3A6Sd+hIvJ4i8CkqVFPLVvu
         SNihC066qADNkJlBgjiO7auHNVG0/lJ3Wv4marxyAlOba+C8PO/ZXkazf+4CVowjGzHG
         MlbQIF2H9vrwpDH2TnqRhMxJ9pRlcXt/UXfLHT6aKUKN0jYGtjAlNkFqo/VcXtH3TN77
         joFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVr3iUNOq2lLogdOl9JWKRcwJQ57DEOq20lybE31foD7UpQucP/Qb6Mpu5xUIyD+Wq38lDRmrQJwnqj@vger.kernel.org
X-Gm-Message-State: AOJu0YwHcq2dyyULANQ9M2BVaWymAx/R+Zje4alFXaNBtAwHkdqjrxAe
	ILQDM8p9iLNjhqjlduPsjowctpWH4RPhzzXJNjzfPkNDBKzQANWYkV0Onz7wL2PD/V0dLS+a/fm
	p8qShueHtn5ewTeYJdbuyVqHxOheQ5hldlCsQslRf2qXPVeLuUXJEAtEv4YT3OB4x
X-Gm-Gg: AZuq6aLver4/rMlS7O4AgSFEjN+bjQJdyfo1ASV85IytYfsVMD3WVJYvxTEGrwaGl8l
	/fsO7JWPTzcZ+3UFNZJILFF//kkz7JE4zfMWd1PhQbeG0M5zJQH4wDwieaTYqBZEjuj5Hhkt8Qn
	N1X/Oc1DXm2AgF8a+A+vSNqnadQjY/XAe2aPHmBgbEROZ75DzCAcOnXlur6I0clV+7THrAsCf7B
	/n0JyLf4+i/pqCtNo2oygJZoSBtARSHMUPrYJz9HwkKypNMR7s8ZwJsdfOP22UXMY0VHTCj2s82
	ynHe7ziswTPw3taa6onbcIoRzIsAvmW3d8MlJU5FpcQlf3U6r23d8z8O8vxGnG7UvrJ+G+l+hbW
	AcoE0gr7le1lw2h3OAPuFBRPH
X-Received: by 2002:a05:620a:4104:b0:8c5:391f:1db7 with SMTP id af79cd13be357-8c70b9082b1mr1017573085a.64.1769684365987;
        Thu, 29 Jan 2026 02:59:25 -0800 (PST)
X-Received: by 2002:a05:620a:4104:b0:8c5:391f:1db7 with SMTP id af79cd13be357-8c70b9082b1mr1017571385a.64.1769684365347;
        Thu, 29 Jan 2026 02:59:25 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132356dsm14498219f8f.33.2026.01.29.02.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 02:59:24 -0800 (PST)
Date: Thu, 29 Jan 2026 12:59:23 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: document the Eliza Top
 Level Mode Multiplexer
Message-ID: <yhnnlbvcqgtaseoiarii4rfsmiem56hxsiuibf3kyux5ftebgy@dhkhij3qq7sk>
References: <20260127-eliza-pinctrl-v2-0-1faf78efdc2e@oss.qualcomm.com>
 <20260127-eliza-pinctrl-v2-1-1faf78efdc2e@oss.qualcomm.com>
 <20260128-hot-camel-of-acumen-eef9f2@quoll>
 <5teqin7wl2n4spyqrt2glyeaxe5tm6zgk3tmzs2nhj4xedurrp@um3y6enwt7iz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5teqin7wl2n4spyqrt2glyeaxe5tm6zgk3tmzs2nhj4xedurrp@um3y6enwt7iz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA3MyBTYWx0ZWRfX2efSsJTE2pYz
 L6YuCEUkUV7bqV7N/NExGSMA9e3hYp7yvGZtFBbzJCDQnTWB3tkPeWAWgo4aZJbqeOEDhIOmKwc
 de5NKRvNHc6WZTUPraCk2HFxcQYR0X7LNlqAE+uM2n4/0RBLxbRaOtibX6f03fNy6xdCOwhSRCz
 VgQSvkWKUWj//0JQsEiewNxYXqcLtpu0YW0QX3LxLzFmVeYIAlhM8wAjLU8HB3RkqpouELiGlDJ
 hRek3n0fBb9Ffo5XmA74L+ucNlX4udjSh+Kq1fj7CqqvV0u0GVNu+6gmDR6w6xLakDyx3CZN+tH
 JZKmP6kWA51hplvkHG3Q9FxoKpwGSn1NVgzBjGjtBkr7StyvqSwQSekagZTDDsiP6+fMWU7l167
 NrfUysLbktudk4VlSvuwi0CHvVzJlsnDfWFiprwdFXilXasg4bucvZnDkhcQKap5a3y8ikoZHfs
 iA9KeowhuKKiJloz9LQ==
X-Proofpoint-ORIG-GUID: OF9R4y0C-OIjaqQ01U9B7sqYU2ftv00a
X-Authority-Analysis: v=2.4 cv=UsJu9uwB c=1 sm=1 tr=0 ts=697b3d8e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=ORP-x1qtNI2ya4drUPcA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: OF9R4y0C-OIjaqQ01U9B7sqYU2ftv00a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290073
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[sea.lore.kernel.org:server fail,devicetree.org:server fail,qualcomm.com:server fail,oss.qualcomm.com:server fail];
	TAGGED_FROM(0.00)[bounces-260837-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 59999AF5AF
X-Rspamd-Action: no action

On 26-01-29 12:54:49, Abel Vesa wrote:
> On 26-01-28 12:38:32, Krzysztof Kozlowski wrote:
> > On Tue, Jan 27, 2026 at 05:47:36PM +0200, Abel Vesa wrote:
> > > Document the Top Level Mode Multiplexer on the Eliza Platform.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > ---
> > >  .../bindings/pinctrl/qcom,eliza-tlmm.yaml          | 138 +++++++++++++++++++++
> > >  1 file changed, 138 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,eliza-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,eliza-tlmm.yaml
> > > new file mode 100644
> > > index 000000000000..d8b6591caf57
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/pinctrl/qcom,eliza-tlmm.yaml
> > > @@ -0,0 +1,138 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/pinctrl/qcom,eliza-tlmm.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Qualcomm Technologies, Inc. Eliza TLMM block
> > > +
> > > +maintainers:
> > > +  - Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > +
> > > +description:
> > > +  Top Level Mode Multiplexer pin controller in Qualcomm Eliza SoC.
> > > +
> > > +allOf:
> > > +  - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: qcom,eliza-tlmm
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  gpio-reserved-ranges:
> > > +    minItems: 1
> > > +    maxItems: 84
> > 
> > 93
> > 
> > > +
> > > +  gpio-line-names:
> > > +    maxItems: 185
> > 
> > 186, your first GPIO is 0 and last is 185.
> 
> Wait, are all of these wrong then?
> 
> $ grep -r "gpio-line-names" Documentation/devicetree/bindings/pinctrl/qcom,sm8[3-7]50* -A 3 |grep maxItems:
> Documentation/devicetree/bindings/pinctrl/qcom,sm8350-tlmm.yaml-    maxItems: 203
> Documentation/devicetree/bindings/pinctrl/qcom,sm8450-tlmm.yaml-    maxItems: 210
> Documentation/devicetree/bindings/pinctrl/qcom,sm8550-tlmm.yaml-    maxItems: 210
> Documentation/devicetree/bindings/pinctrl/qcom,sm8650-tlmm.yaml-    maxItems: 210
> Documentation/devicetree/bindings/pinctrl/qcom,sm8750-tlmm.yaml-    maxItems: 215
> $ grep -r "UFS_RESET\"" drivers/pinctrl/qcom/pinctrl-sm8[3-7]50.c
> drivers/pinctrl/qcom/pinctrl-sm8350.c:  PINCTRL_PIN(203, "UFS_RESET"),
> drivers/pinctrl/qcom/pinctrl-sm8450.c:  PINCTRL_PIN(210, "UFS_RESET"),
> drivers/pinctrl/qcom/pinctrl-sm8550.c:  PINCTRL_PIN(210, "UFS_RESET"),
> drivers/pinctrl/qcom/pinctrl-sm8650.c:  PINCTRL_PIN(210, "UFS_RESET"),
> drivers/pinctrl/qcom/pinctrl-sm8750.c:  PINCTRL_PIN(215, "UFS_RESET"),

185 is actually correct, because ufs_reset doesn't count.


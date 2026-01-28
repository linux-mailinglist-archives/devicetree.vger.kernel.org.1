Return-Path: <devicetree+bounces-260556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFA5CcVIemkp5AEAu9opvQ
	(envelope-from <devicetree+bounces-260556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:35:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F8CA6FC7
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:35:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7D6E13012D51
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA2E330B3C;
	Wed, 28 Jan 2026 17:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jE+SG7tU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E2kFdDze"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6F8309F00
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 17:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769620951; cv=none; b=Ilf6mZdVkRO9FB2vBZdVv5HSSh+aXyWS7xZjBxUr0iu78nfg8/b3aWpCwcJ7zKdpESTmGwqpozBeSvX8YY0iRNqlcUR2+3XsARV9/ohYzKigT1PtDkyv4PO4he61MNr8Sho1tiIM8eKw6AixljuIFzm52f/801pJQm++ZiAtvBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769620951; c=relaxed/simple;
	bh=E9Xj2lxnS361NI76BlVqnkRkZkKnbzb4k4dW5EKSukY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kJReBY3TK3SIuf7Gh764nWtLRnpBlncKY3Yg2faaMMcG2MlPsjW7z7dH0ivHfCMDhZxkAlUlI9kwiXlemjEhdOd8FO+wnCZwGPqpCMHYYQEFgI5tnaOq45B+Sq6vMp6gidzWoFqaQmxzFeZ6VrDfnQweByQE7b8W2J8m0oXit1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jE+SG7tU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E2kFdDze; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SFOpgr3252559
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 17:22:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XpBXhAt3FomOuUH5nhF3KASA
	2xX++XudCERvYumTHIo=; b=jE+SG7tUnQ8SJW/ZZd2KIA/9pRbaYg5ANjaMev93
	zdDfOyiu1hw36Dq9oSySyyWGpaQy/Kl6OebZt7AfHsyRXKyah1T0h8km9qmgYFnY
	JU/ms2TdaHoVXIWhoaRl8TUvYpVAvSC++y5cR0dvuTGIC218IpURFsFUAGAe1j2h
	LMzJrzcDqVAmB2zJdYOjzpLw6v1YHBwUVlRlm3rfUHyjphyX2LD/O7cAoG0/49z7
	5C/3D47OrvSEV+L26IxuC20gFBP9k0RmIXe/UUfWMJbU7pJEtcJh2qA4T6PK5YKL
	B2ytB7o7tIeOC05AzFXZsMO2F6oGs0MskGyCF9414+ipIg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bydfk2b2u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 17:22:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c711251ac5so24427185a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769620947; x=1770225747; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XpBXhAt3FomOuUH5nhF3KASA2xX++XudCERvYumTHIo=;
        b=E2kFdDze8cUh8oZI6HTDnoHhwL4lBerZIVZ/O2ZBuAJYPVYxItZ4iivUQCQ2nJC1bZ
         v8loF+9QH+PHvgfL3guKBd/ZzED4+1PCyv9okUF18iz6cwDuegbI6EnNmA3nPihwZazN
         P60akcsuWA/Y9QJ1vw40UcaGkwUDsf4xogG2NuTpu9TgeFhn8eZBt0qxROISt4x3ZHMQ
         Q6jhgLT1ySP+OGZ+wV0cw6FUnXqhNl/Yt+Pgl3usHfRJVejALzF5NyDpIqCUzGSl2+NP
         UI/0aP7a516MT/azBb4lKVGfZ8pmWWI0QbFvhOQE/cNSImNz0kU920U5QPB+Qs4OMgAu
         khQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769620947; x=1770225747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XpBXhAt3FomOuUH5nhF3KASA2xX++XudCERvYumTHIo=;
        b=NGGxj4YZN2l5fpAb5GfPTyoSJRr7paXGQskji3Suk8mzZXRfwsXy4wxsk1xI++6sYg
         WZpYvB4f4ljd887d+gAci+hzNP5wAAh/E2rVUWr/zRdsDjpQ8cP+nQ7ttyjQnoxQG/JZ
         9Gk19wMv1NC4+2gKH9xKh1RnXfL21p4z3z+h37qTX1h6hTJ3vGJd3k4BBQm8NqXs5fxN
         yK+bGzvu6nbieU+1sMxk3mORUpZX05K2gwjEr2LzGWTybMLmiJEWi88n6DJG0RY2evbc
         pDWZ180LubX3hzO8GMbnOU1UKVd9iTOid1bnH1PCQoiUUex4Jc3Cv68os5fZfiEv9VSM
         qpwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXE3qwn/oo6b6eFzVO0tZLitUp3TQL1v9deTrObOecar6HO2UFxqzUZ5WqiPRjslKmLPPFN/I9wI5PG@vger.kernel.org
X-Gm-Message-State: AOJu0YwqCV2gF5GM8zldTtoTTeQHhO+H3tXvW0Zu2e4zR0RadefdNk7L
	Rl3AasvKN6fkMe2trwMXJ612g6wHYRdHlZQBebvlAvsVkwTiruBOwob4pYKA192BAqeMiPlmDsr
	G1KWoy/I2qXg6fqYAA0X+hO6wAlG886XDaBXGEvRfc7XV3cvSNcxk9/m0Wev2YGKJ
X-Gm-Gg: AZuq6aKV26Irxl5AcHIdi5LnNdT0woPPdXfXF/BgjiwTXvyGgVuRNsUdLMME7P9EYFU
	ZC+TtsSoaG1YOVJN/pLl49LmwGxl/gX7ysNP1n5Q6uQ6+qlnxt2Jm0cx3KvBF4csOIAZwzJR8hJ
	VUN2E92WCSXnp2e4utH1Iq3a1gKMlRzkAneYjc8ybsvCXu0Hk3Iq34xZA67nJCc1I6wVmeEHLFG
	wiPCvyVG2P9Kfx6vsaSDQ1g1k51qA0AwPuF3GasoBxm1boofoVb+dBU/5hLDBQNA/Tia6U0fRlm
	1Dqj1AI5EZMsVhhquQWcCCevzQmyDkFZLXbMfZBWI5o7UuJBxGBlGvhKz1Yzg7EQO+FY8C6af8h
	XdoQqqTyj07T3qzI+/xAS4NIM
X-Received: by 2002:a05:620a:470d:b0:8c3:7e55:cdd9 with SMTP id af79cd13be357-8c70b90a02dmr694136285a.76.1769620946785;
        Wed, 28 Jan 2026 09:22:26 -0800 (PST)
X-Received: by 2002:a05:620a:470d:b0:8c3:7e55:cdd9 with SMTP id af79cd13be357-8c70b90a02dmr694131185a.76.1769620946102;
        Wed, 28 Jan 2026 09:22:26 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4824sm8996607f8f.1.2026.01.28.09.22.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 09:22:25 -0800 (PST)
Date: Wed, 28 Jan 2026 19:22:23 +0200
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
Message-ID: <aizrc6xysfwzygdsfeuc2raccq7efmwg5bn6v33t2de6ugvzgi@z3ipf3i25ulf>
References: <20260127-eliza-pinctrl-v2-0-1faf78efdc2e@oss.qualcomm.com>
 <20260127-eliza-pinctrl-v2-1-1faf78efdc2e@oss.qualcomm.com>
 <20260128-hot-camel-of-acumen-eef9f2@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-hot-camel-of-acumen-eef9f2@quoll>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDE0MiBTYWx0ZWRfXyNwJxJ389KQd
 M+DljgKg5pR5ftOJH8Mw1nXXy6/hwGUx0UqrDre3h+2467dB4vsPkG0OhxK6UzcYVbiIbjzZm36
 xbQpU3K8yoltyexyJyxteJ1U/fMwa9ksGOORBqbYdHSlMwrtkvypC720LZhWEgfITLslr/uQp9s
 iH9pWsvHKAYQB4hJHltMeyttRkzNHuPX1lzDIcCWDA0Ax4pH4wd89nL55MIHdoLnohmcmToAysn
 OZPT9q/Cz02sAF+MB5LXSfUxj15A1T8G1gf/wunP75xsWaJ2FVnfvTTSzAtCixb1sCbwB7kg4/9
 yV7Iv6VmTvSzxfDvucxngernroY4UQ6NZrek4oYcA0EL58ary3o9mQDDX37dVvqHRyG5zf7GYMJ
 ak3YLI4Ukv8vDy6W0dEdJqYCUbnj6uldPLWc5Tsss4AulRSqiETUuYx2QPsaMKE3hUDRZC6oGBs
 enNrKLiHz91BIrTtrDg==
X-Authority-Analysis: v=2.4 cv=XfWEDY55 c=1 sm=1 tr=0 ts=697a45d3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=3glTqji7Xff0SCUsWbAA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: lNjdFuuYjmW964GkAZSo_5RKAsB8sQKN
X-Proofpoint-ORIG-GUID: lNjdFuuYjmW964GkAZSo_5RKAsB8sQKN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_03,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280142
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260556-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 86F8CA6FC7
X-Rspamd-Action: no action

On 26-01-28 12:38:32, Krzysztof Kozlowski wrote:
> On Tue, Jan 27, 2026 at 05:47:36PM +0200, Abel Vesa wrote:
> > Document the Top Level Mode Multiplexer on the Eliza Platform.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  .../bindings/pinctrl/qcom,eliza-tlmm.yaml          | 138 +++++++++++++++++++++
> >  1 file changed, 138 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,eliza-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,eliza-tlmm.yaml
> > new file mode 100644
> > index 000000000000..d8b6591caf57
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pinctrl/qcom,eliza-tlmm.yaml
> > @@ -0,0 +1,138 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pinctrl/qcom,eliza-tlmm.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm Technologies, Inc. Eliza TLMM block
> > +
> > +maintainers:
> > +  - Abel Vesa <abel.vesa@oss.qualcomm.com>
> > +
> > +description:
> > +  Top Level Mode Multiplexer pin controller in Qualcomm Eliza SoC.
> > +
> > +allOf:
> > +  - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,eliza-tlmm
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  gpio-reserved-ranges:
> > +    minItems: 1
> > +    maxItems: 84
> 
> 93

Will fix.

> 
> > +
> > +  gpio-line-names:
> > +    maxItems: 185
> 
> 186, your first GPIO is 0 and last is 185.

Actually it is 0 through 184. The 185 is ufs reset.

> 
> After fixing these two:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 

Thanks! 


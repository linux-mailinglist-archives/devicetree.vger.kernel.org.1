Return-Path: <devicetree+bounces-274138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDo8Nz12sWnovQIAu9opvQ
	(envelope-from <devicetree+bounces-274138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:03:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 56579264FE2
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D6998305E45A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4244434B1B0;
	Wed, 11 Mar 2026 13:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g8V64/oq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="juMMInyf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088FF363088
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773237453; cv=none; b=XZ4A35YrVGy7rywn7shVrRTCRdkl1XwNS4Y3P2UE5JqdkvvsVu71DkPc18P+H3hmqlvaltyHz86W7IrkPkp/NyYv/ReaFru156GqdIRvMqBp3tFM4MTjqrFNUM2Txx2mscKv7BAHvtcinTVY3bPu2W2gviNnbbxneqw9IWp3OJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773237453; c=relaxed/simple;
	bh=95oS7uT3QSKknLLzNx9HxZOh5CeULN7No8qlDnPxtmU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XQZNSxfkNjcwH3JRDYood0cWFaX8zUJE43PpPCNb2I+DxuhoBdcym2bxcY0qO3ynM88iA65v7xQOlQqVr7WCdDxcWXslGCdqHI+ziuD3nsLHAgacbAI/lAUedDdsZaO7tpMYMG7pm+Se8o5w/XlwVDcn6qTE62jarPJul4UP6Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g8V64/oq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=juMMInyf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BA34In2038162
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:57:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AKleu8WXunXzFfWbVkCbJoaZ
	bdLPref4hcPUWgO3aZI=; b=g8V64/oqtFBDcL7zpUjsdMWpOoq0/aV2cUN7wmdH
	E1D5VCtrC1O5BqtKLdUBGTjfmHB2ph2koiMT6uHSkV9Ra+m7aBB9ZYL8TtVE6Qnt
	m/uAyKp0FV92Z95Y2NJmQFtAymh0QaCMVVE1fYpz7i3ZyAoHMxznC+gFJLs5iYD2
	c+Iv7bFW1dXCeZJtcZtU3xUD3aw97atK5DkbqVq9xqvWRunD5/+X7ESaBtUKHi0l
	H6mGwIvziMg2yhdxTeiz0MlhvQTGY1cFsM0whPa/uHDote1ZrjotSxkgl2ET7ytD
	+rh3dgonQyiQjM04v8U8viB5xAxOcV3qsZN+WD6NNbWCRw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu6a5gt48-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:57:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd81c571a5so1857404885a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773237449; x=1773842249; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AKleu8WXunXzFfWbVkCbJoaZbdLPref4hcPUWgO3aZI=;
        b=juMMInyfTgL2RRnK0RRmwO/RgQOcwXOxjkOH97QskThVAMILE6Htr1pE7qdon137oD
         In5TGKe1RmoPtwVTdSXc1RDlD3hiq/9wEZoC/niULD69vEyind0PRPJ/gpB3EZP2M7m0
         UU9uQEin8ZPatjzz7NlwK+6F3eOXQUFd7X45Cjm8mVz0AkNV9Yb1njUDO4XeenYqHr0i
         tJsOa2+9SRwY8SPoNbl8kWBZuPezyXskgit8+6YPyghywtdVmB06NT4Ygrp/cHshQ4Wz
         Xm8yH+ncp4HPyvT5N2m1RinO8jiEQqTEdIrVqJfOCgHECoi1z0mTZ9aBu0S7AjNnC5sN
         oDsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773237449; x=1773842249;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AKleu8WXunXzFfWbVkCbJoaZbdLPref4hcPUWgO3aZI=;
        b=q+GjgyXIGlZJn3KdUwRKOico2W+L0JvjsOJTsIRffyHgxZliTN2lM4uuNlJyoqzBCx
         NNpGNjceIg+koxf6Q3n75jzNRawGmO12JJTbavH3DZDgVVaEM//49VgnocCxCkpqDXsi
         WsF5rg3yhWgM02LLCqCTDJ+eZbQqKzvt8JrsnA5elIURIQhqccyHO7Sk4HEo9hrRtueZ
         9IjLPB0Vk53woBWxzox7UASwDxSnLf7Qt8koLSAF3OteOlc6geaG4kfusHh/WyrfQgP8
         lOSKqJkUndQ1UUSPJuBwaA2IW1SYh6icind9MwKvMlf6BMxMfae+U/ybLnpuobyxUCOt
         VjaA==
X-Forwarded-Encrypted: i=1; AJvYcCWrn3H9eqSZD3x0TMYTwGLHacuGUXm10gspQtUsKon5pecx9IWICkgSmASDkGUO0SzkZBn/llpEm6i7@vger.kernel.org
X-Gm-Message-State: AOJu0YyWkJ/bmgIe3IuPoGaEhMe6yRW+kOglkhoYXPiyN2DmSQ3P13xX
	l76gBqT31TVa4VLHAmocf2SwgNPbjft4hu2Ck5Tn2eXZLeE1SGCkPVwXutWcduKsvUIcPiLQy7b
	GV+yWKANF1p1aDJAZMWqD+4aCx7Qcdt79AzYZ8I2+RrBPVU7MWNPC47QZVNsE9Kh1
X-Gm-Gg: ATEYQzz7mcZ9luYVFXwjgKiIkjFwExeHgSMl2thH1etiX73esqOytgq3Cn08Hcd++Zw
	+zwQK1tKRDQN1AFXPtst8FZ6ZldzyFQVZFY/V+dimxWC8xd3/3HkwQvYGqtJh/UM4nLgoq1pTiS
	wEQw9UhylOcH2il1KOS7fZz8jOAEdE4SiExaQXfBC5eBcZlrKP5g/POVwps5+4/aSxJqKYD8XSO
	HPvERD/97M/keWdNbNXOfMCpkj+OE6Nswr8S/lBEDaDOskq+6guDzBcqELwq1cePDuylcDmTG4H
	wbpGFKjkmG1Sq6gTzUIyTxd7WjBFeAawVRAPDzCc1+MJp4gNLLIcUkHDxCaqL/vXjMCiBtIJove
	68aF6Vy3TrrQiCwdKcFjr85hs8W1IwKGO3dpa
X-Received: by 2002:a05:620a:444e:b0:8c7:fdc:e871 with SMTP id af79cd13be357-8cda196cabamr298482285a.34.1773237448827;
        Wed, 11 Mar 2026 06:57:28 -0700 (PDT)
X-Received: by 2002:a05:620a:444e:b0:8c7:fdc:e871 with SMTP id af79cd13be357-8cda196cabamr298476385a.34.1773237448145;
        Wed, 11 Mar 2026 06:57:28 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f81a0307sm6934445f8f.11.2026.03.11.06.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 06:57:27 -0700 (PDT)
Date: Wed, 11 Mar 2026 15:57:25 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: spmi: qcom,x1e80100-spmi-pmic-arb:
 Document Eliza compatible
Message-ID: <mfwrqojtcrn5ayrlqety2or5pcyl2zbd6ykk6wtmdvdrnu4teg@egqdd3nwghbo>
References: <20260311-eliza-bindings-spmi-v2-1-12783c6759d9@oss.qualcomm.com>
 <9b8ea7a8-80bd-4aba-89c3-6dbe9d43c41d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b8ea7a8-80bd-4aba-89c3-6dbe9d43c41d@oss.qualcomm.com>
X-Proofpoint-GUID: 5HDPI0UZUA9AY1tFK2A08xyhybExjW7x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExNyBTYWx0ZWRfX9Ls8GV/e7Svj
 ElftaCGFN0EWHpIngbu/exHaOfkD/xOawZ6Rav5zFTyxDpa/uKmNFGcww6Yhw55pN5ZexCYmre9
 rfxr12DsZk2/Q02Cdf1YGVgY0cxhrc3bhn6HsfmCoG2GxyHbeEUDThi2/RR1FNHV6cl10If0gU9
 NK1XyI8ZEapudKMJOjXmztEvna4fgf5zPAdprs0uq+ecFelv0YqHiJrI1gOPESQRHrvOpxvhCsh
 yBwjarA+Rw9xWk5vu8P+H3e8Een2h6bY7pG/y6kYVPyHnDxGq6HZB/LN+zELjrgSDaZyqRrurxw
 lfDaCQwBc+o8kmZbKj0lmHXO0mo2VUS8v6dFjuHAI/qBJ971BRynosBD07iqHkQGcnJ0Ki8WOFf
 vJLy8fDr8XlsQzS7cqKFbjtI1v51qrK7eXRqB2y3KZef3SVX5+m1UrPt7CKArAbIxspM8YsCLxU
 KcA5ZZ+AKcno/uPwPmQ==
X-Proofpoint-ORIG-GUID: 5HDPI0UZUA9AY1tFK2A08xyhybExjW7x
X-Authority-Analysis: v=2.4 cv=TtLrRTXh c=1 sm=1 tr=0 ts=69b174c9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=zfxTwsey7iIZlvVtrRIA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110117
X-Rspamd-Queue-Id: 56579264FE2
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
	TAGGED_FROM(0.00)[bounces-274138-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 26-03-11 14:43:27, Konrad Dybcio wrote:
> On 3/11/26 2:29 PM, Abel Vesa wrote:
> > The SPMI multi-master Arbiter found on Eliza is version 7.2.0, yet
> > driver-wise, still compatible with the one featured on Hamoa (X1E80100),
> > which is 7.0.1.
> > 
> > So document the Eliza compatible and allow Hamoa one as fallback.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> > Changes in v2:
> > - Instead of reworking the whole oneOf for compatibles,
> >   add Eliza similar to sar2130p.
> > - Link to v1: https://patch.msgid.link/20260311-eliza-bindings-spmi-v1-1-1a20eec1179e@oss.qualcomm.com
> > ---
> >  .../devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml          | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> > index 08369fdd2161..4152469b3880 100644
> > --- a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> > +++ b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> > @@ -23,6 +23,9 @@ allOf:
> >  properties:
> >    compatible:
> >      oneOf:
> > +      - items:
> > +          - const: qcom,eliza-spmi-pmic-arb
> > +          - const: qcom,x1e80100-spmi-pmic-arb
> >        - items:
> >            - const: qcom,sar2130p-spmi-pmic-arb
> >            - const: qcom,x1e80100-spmi-pmic-arb
> 
> I think Krzysztof's comment was meant to suggest you shouldn't add an
> intermittent items: entry for a single const (lone-x1e compatible), instead
> passing:
> 
> oneOf:
>  - items:
>    - enum:
>      - foo
>      - bar
>    - const: x1e
>     ...
>  - const: x1e

Oh, my bad then. You mean like this?

@@ -24,10 +24,9 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: qcom,eliza-spmi-pmic-arb
-          - const: qcom,x1e80100-spmi-pmic-arb
-      - items:
-          - const: qcom,sar2130p-spmi-pmic-arb
+          - enum:
+              - qcom,eliza-spmi-pmic-arb
+              - qcom,sar2130p-spmi-pmic-arb
           - const: qcom,x1e80100-spmi-pmic-arb
       - const: qcom,x1e80100-spmi-pmic-arb


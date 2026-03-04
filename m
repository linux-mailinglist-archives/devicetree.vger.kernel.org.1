Return-Path: <devicetree+bounces-271240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SI1aDBWJqGn2vQAAu9opvQ
	(envelope-from <devicetree+bounces-271240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:33:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AA485207204
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:33:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C13F8305B5A8
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D2563DBD71;
	Wed,  4 Mar 2026 19:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B6/0HCT1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vg/xA6BG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC863DEAC5
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772652669; cv=none; b=Ck4sP4Irc3VQaDW55WzmDaSgysf5r3iFcodqwlvlsWCwfKla6xw3sEkC1NBU0tWAXE10LWrVtTM2AQkS4F5YMjHWz5Ilt6nT4MZqYSdvaDQTyaBnsxMecvWerHFuUJ3ck8b+HgXwar1hcWKgyW5qBP07ZCDT4/HLPgcYmtXM+Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772652669; c=relaxed/simple;
	bh=BjQN/cMf0T0DG1I/pwW0EAEy4bY4mFUT1E3UZGvt8GM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JQggs4wvBersesSHvZL4Lhwo7RYOvAcNbu5+TPYPfXs6iB2w3NQ0zd1SP6cCrcYjWbRo1YgSRkKp5XiHq9puaHCLMJ74/9dleBEHHq3MuTCdOo7Ty/Q5c7DVKFQ503z3XQrlJiv80ESbTzBgSGinJ0bk3Lbx4ZcwQ9lBL4v0GeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B6/0HCT1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vg/xA6BG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624HTqLl3245641
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 19:31:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5Jaor1i7AaHnrlCUBtuu5yj9
	CDGjIA3h33PiPiPYpNA=; b=B6/0HCT1giHCu1qilIWaWxAGL9TVYR0aaiE8GJJv
	X3unB+slTHqqyJMag90tMNq2NMIe/X84h0BnqSD/dn47/hj9+OQIw0wcxrCP4CNK
	SpvEY06u4k3LJ5ppxCuwTAgOz+PD6aEOA7LPF+AvQu052mlH+DGwRlzwzrsSM5s/
	Jm+GZ90PNC2xXCh1NLnT106oph24aku6pZ3UHMvhYEiKecQS79i/Z68BvWqBH5Kl
	JiaKT44IB+SE4sGNDIB5hzuiR8iQmgEVpmhAk5cHW5DPgNcOa2ShChFbiyLLinoa
	M+XaMFfArLhc7y2Re8ZwPKTW0UST3hRoxKhRLRrfBQO6Ig==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp73hc5g9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 19:31:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c882774f0dso4426021185a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772652666; x=1773257466; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5Jaor1i7AaHnrlCUBtuu5yj9CDGjIA3h33PiPiPYpNA=;
        b=Vg/xA6BGAnAyHFBGAXzQdkFssw/1EG+IZA0FtodIJoSOS5kv2bWy4Qb+aE3pPMHjPa
         z9X6PVUr3m4cJE9vmIQlzRSa7Ra6GAV8XJCFhLyO+0C7cAHkDOYCMI7SGxeBkHBva/eM
         vO6bBPQRZvj+q5sthKJkga51hrG5+3dRaoI/XrVow8MlniT69kRWg1O9nWYxL+6IAHjQ
         ZNhDOwJe3zoWK7k5xu7wLUoT/AFnkrrspRzCin26T9UAz3mTMzmPFWHyab/jMv0UpDBF
         LBp/WerRbHNWH+26Y3Bmfc7Tn5L8ykqqa2dppu4/ePSnZFJv08TjS49zIST9Jj/7qHEY
         JrYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772652666; x=1773257466;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Jaor1i7AaHnrlCUBtuu5yj9CDGjIA3h33PiPiPYpNA=;
        b=ERzPxnL0cUH/V2WGcP1wyKvYO7vi22+Tkfvg+7Z74SZiKTSfDyaMwxh8jh6xnibrzz
         yNl9UHTR3bZUr+PSUvv+mfek2fnXM5qwWg7YCtQneMw9jpBxKEmUOmLs+4rxjjriKY0G
         w4ZJaDCcMNPyOtjo0Wc3wPGselbhBtwol8f11PB2Wka09qTVBv4LyrMwEjm06IBm1Y3y
         KxHs515Zi8rJlq7l8pEVaARVrEPq3Kv3yAAC4DKq2RQreCvTnL/yZ1iVrg5TV/lFa2gX
         eWP/SzzcK1L0QT3l4odPLXIoz+cksxYJS3VXI7b7lVw/Mp9YlzvQX2bGUDX3022INfBK
         ZG6g==
X-Forwarded-Encrypted: i=1; AJvYcCW+4eApZBQT4Zwju9hsYDu7WSAz/3RjMayHl6UKz08Rw3eE9PuhScyUwo/wmIMpHXHdtwcV9xogaVwF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3RAUBizguY69AjebLiFXXq+l/cvqYzFZRITQ1GNlGgQtRFu0y
	da3jy1KdGyro8+7oFVPHU91jcX572OCYf6iMcD9BzLdqb1/oCCebWsruzCeydMqIVasncyvQO8z
	SGimbf5dcdVAN52MmyogfOjDKHeLDShcIvrZDD1pMX/BDDQ+fVhUeCEAgjsRnF0nf
X-Gm-Gg: ATEYQzxJETNfMX/tIpBqFCWwDaexXpn8mWgYkKpwK5KOtC/HmfGwEYVdMMq5kqSM/id
	m9zCczBwwgwm3qoWuip4FKhio3AOZzBY6ZTzPHXIYMfVSMIYxlGlSGk9PviLWMoDdS1NXQhu7JR
	9ZrOqTaTnTE63w1PyNYJaG1g2Yiv9qUPotWn9DBM/ctQicMQZG8hUzOOnx3K++quXacg0u/lehs
	oaEB7kAPeI+oGiolO3Qi+pIJdpiNJjiTcjKZHfToN+jNmDTKfDRCSh/cO/RBzobXft64ZNLLA4m
	LSAvv+A8+6o0Sw+2sxLimaj99BkL4qgVH0ZsCAnqCGURfY1fpSkAB5cyRu3ZJ99tdNkCoSaqrAY
	6Wcu2RzXi778B3XlvsCVZoq4hdoMi
X-Received: by 2002:a05:620a:3722:b0:8c7:b5b:cea7 with SMTP id af79cd13be357-8cd5aec67d7mr408392085a.12.1772652665633;
        Wed, 04 Mar 2026 11:31:05 -0800 (PST)
X-Received: by 2002:a05:620a:3722:b0:8c7:b5b:cea7 with SMTP id af79cd13be357-8cd5aec67d7mr408386285a.12.1772652665180;
        Wed, 04 Mar 2026 11:31:05 -0800 (PST)
Received: from mai.linaro.org ([2a05:6e02:1041:c10:ee0b:246c:2dae:77b9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851a82dac3sm43124135e9.0.2026.03.04.11.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:31:04 -0800 (PST)
Date: Wed, 4 Mar 2026 20:31:01 +0100
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        "open list:CLOCKSOURCE, CLOCKEVENT DRIVERS" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
        "open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/1] dt-bindings: timer: fsl,imxgpt: add compatible
 string fsl,imx25-epit
Message-ID: <aaiIdS0zRPBY81aE@mai.linaro.org>
References: <20260211214947.3705328-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211214947.3705328-1-Frank.Li@nxp.com>
X-Proofpoint-GUID: XiYKMSb2cBOyavAdWOBuKNLaKCP0QhHy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE1OSBTYWx0ZWRfX5KTAEGL09H7h
 zvwvFGxHwhvmR5qWjT752xaNArPv/aO7NqiI8ddb7A+V3zUvzgzUlqztDzukED2/tIvqA5YMV6T
 K63t0h/2RJMfo90hS9c/m+GusUgijDopgV6ngrU35uqgFj9Ah3Tfmwo2gWTkff2rRyXbEZ/10Mx
 HiHKqD+DL/ep6cDierYOv3na6Yht9Twn01HtptkkySjlpykvWov/kcbXYhNq63SCZvtsnr36HfN
 cAGZAaVO94ENCspsjKOrLDRE3YVOdTYKaDHem25+wMl53FiLIuSLze1eXJBM9dPZulhjEsULo6m
 NNRzpD2+zkskM2GKC0UFVvfT4HNf1y54foYOlIcWH1WTgHDSsc1eUVAbz9V9vSjH7N8OfjKyHGL
 9QbSHCphjC583j4Fo5AYar24CaWU3hxV73H82Twyv915kkbBl289PnLvW4GUWttkObOb0b2mOEZ
 S9k4aSNqvq9/MgaWkWA==
X-Proofpoint-ORIG-GUID: XiYKMSb2cBOyavAdWOBuKNLaKCP0QhHy
X-Authority-Analysis: v=2.4 cv=BpWQAIX5 c=1 sm=1 tr=0 ts=69a8887a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=8AirrxEcAAAA:8
 a=VlEfjGrzG_qnfxHD3IEA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040159
X-Rspamd-Queue-Id: AA485207204
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,53f00000:email,mai.linaro.org:mid,oss.qualcomm.com:dkim,nxp.com:email];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-271240-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 04:49:47PM -0500, Frank Li wrote:
> Add compatible string fsl,imx25-epit to fix below CHECK_DTBS warnings:
> arch/arm/boot/dts/nxp/imx/imx25-eukrea-mbimxsd25-baseboard-dvi-svga.dtb: /soc/bus@53f00000/timer@53f94000: failed to match any schema with compatible: ['fsl,imx25-epit']
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied, thanks

> ---
>  Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> index 9898dc7ea97be..6d41fb1203793 100644
> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> @@ -14,6 +14,7 @@ properties:
>      oneOf:
>        - const: fsl,imx1-gpt
>        - const: fsl,imx21-gpt
> +      - const: fsl,imx25-epit
>        - items:
>            - const: fsl,imx27-gpt
>            - const: fsl,imx21-gpt
> -- 
> 2.43.0
> 

-- 


Return-Path: <devicetree+bounces-266323-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDdwH5F8lWl8RwIAu9opvQ
	(envelope-from <devicetree+bounces-266323-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:47:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A258815442C
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:47:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CA87D3007B24
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 08:44:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03946320A33;
	Wed, 18 Feb 2026 08:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gpFn/idK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TH9TuM+/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C580B2F6930
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 08:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771404279; cv=none; b=jTyExjPYfb1QdsDGFhaCVBAmidbQvooWX+8PuIbJAdrV6oB4E0na70VNpqkNjGB2twOoIpDv999s1T2rW9sYgRUmeC4cop0Izdwzjp2JOodrv/Wb/xTNG11qWdtcyBkNdtJmFJW8eeC0vYtPimybuGprXVz8kSmVCIsNailuCjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771404279; c=relaxed/simple;
	bh=ZWt45yH42sDKPvaNptuhnbtCXjsl75kDpLBkxKkK3/o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vh6WQ55EFo2ir6YdJ0dAs/s5bJzFmpD39Tn+55zAwugVgJUV9/bVmhnz1q/YIw29YX0EUi3xU1lU7FgLOr+aQWyf9ikcNULkVQUit8x3P6qn07Zy+v7b129WpnvRsPO79jcdC9H/yrjFjEy22Dr2JSJFvt1oILSmTA/pWIIqOwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gpFn/idK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TH9TuM+/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HKXShF3694545
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 08:44:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4AGbJPnQwFvIJpxdlL3I9UAJ
	Z5tojgKAthjJExwJ3o0=; b=gpFn/idKggaBGEOlGCSvJgBX/yb9vG+qv3U02/Wk
	gP1kOYxh0dMP1S70/DN8MwJHVtdR/YOi5TsJoAZzvL7NVugMn9xAzv+aiwTyQLBq
	tfbf65/TpvqwM5lMU5omQUrSWI7UpKTKBFd9Jdvk8mP0ts+06vY3e1GclywsVrYt
	3GWOUa8Bp61yfbUSttmCqmEXYF8iiu9l8CnzsBhHtCu5APJGdc61mNLjRqTD09co
	52Z9ZeVtKX7dU/R7v7ILLBFxmWvDhNlhwAjnHkqAJ66ZGRi0OOE83j/ry3isF6pi
	nrysXgSz7YHopUjNO6scKb/HpZvqBXOS6YiWWyyPpcx5Rw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ccyfb1npe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 08:44:37 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5033c483b76so415651961cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 00:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771404277; x=1772009077; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4AGbJPnQwFvIJpxdlL3I9UAJZ5tojgKAthjJExwJ3o0=;
        b=TH9TuM+/eTOksLLdb3d+uFBZNi+NDgsuXJTSy2HToBhwygwYR31egp3VXQ7pVs1/4y
         rQgUtmjx3CdNEup71JB3Tshzwd/AxmWrT9UCa3LmiXVhyLCswJbxma8J0KTj5zEZwY1k
         BWSvgMX01PlWXwQ8AyA7q2omju1ue4f4t7XCrruzv4gBxIJfVScaxPXd7mA67UOR83fP
         lf7sdldtk0Qzfe1b0iJFagV8dRjqnTvgNblUFbMzZ95K6i3Nnw+MS8kJ2d/0LMUf7SN/
         xhkK7yvH4v7iGyDYNkUYbKENF+4EN/Tu+AGhaJo+Lk1oTCoGNdvtD6qNjjCQYMWViL9e
         GgYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771404277; x=1772009077;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4AGbJPnQwFvIJpxdlL3I9UAJZ5tojgKAthjJExwJ3o0=;
        b=Z7caIlJslb62jmzWz1lpF5It05pFvbEM+LsS+gg9Y4FQMGVY8k31lijnMqTsuZe9Qt
         GUwY/qYI58nB4maL9c0tFsFNWHQOMWmX9XNkGefHa/M0+2GCUZ2YVXea6JMcX3lKc1CZ
         kMkqI+FNlXk25bOhbPnlIUawqtdHGkNFDGxCUeogmRw2W0mQB8DxtZrFE1iUrrnxzgkV
         j2ao8BNX5ALisVa4xWcL4m4hkZeHtDW/sImP8ZXg1ksAD6bQXZOBA40+z0ZHVXqjovGb
         HPDk2/4S0a0HE6LlHAXlKijQGNXRkldCRzns6na3x1F64dt2Wmlm+CztIpACw2j9Iv90
         kz3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXkFBIhvSiLK6qsrq3vIh0fh1rupembxXRaUeasg0OHvkYHH3NdUglhBYYzSBYs27QAJh16daVTYkCe@vger.kernel.org
X-Gm-Message-State: AOJu0YyVwqTmPTQBiWTf+Hxmk/rHdC08ySB4TTA0kb4ITo9uWIBMihVb
	EMuug+6eyGNUVjKJ1Q6JG3Odhn1a5ZFqc0+WRQva8mfXIFJQOJWr7g2trfsQOykvifQSd2fJjlU
	LtTxRWYgPabO6DGL+f/02XtYyx5/KRSh9/d4UpfKTwKhPt3eu+ZpSLBNR3vbRMvn2
X-Gm-Gg: AZuq6aI2bMH31Pot0fuiLV6WTPHEzuEUp/TGxB/WjXv3C65fPBq7sCOlSsOhvY1qBrz
	k0SDe16AkM5dJxhm2IUtXvndLqM9D/Vtb6+Rzm5NaW0evtQu3+uoSUut40bCG9icUfQVEVOdrDe
	8yYgxnQ5yF1QSmT+V2dUIC28fyChcvNB6X1Y5X5Xcn49sPfJcMpbEKSzhfD+gvf/8Epz1Gby8/w
	OHdEZrI0r0mjfxXFeSUcUddhtQ490QNc8CoLJTL7UoMpeOZb/rPnTvKcqAH6DVGh4vbPYQedugp
	aVPbiJcCdimmSlvzv1rK95OtgL7u8axy2SG6dz55UjI0dnyFPG10oc5lh917tBQW1RI0ZTJ2xmX
	z0NkF3AIpC3ZU912G68jgB+z/SJIZN3WRxwvNcn+hChL3GpfuvgN9M3NuSU7e3J5/L9lA8fmTcQ
	NrO3t5/Pplc3Ufb1J4/aUgbCJwXqtAXFcNMUE=
X-Received: by 2002:a05:620a:3f85:b0:8cb:5477:5269 with SMTP id af79cd13be357-8cb547758f2mr1364563585a.3.1771404277151;
        Wed, 18 Feb 2026 00:44:37 -0800 (PST)
X-Received: by 2002:a05:620a:3f85:b0:8cb:5477:5269 with SMTP id af79cd13be357-8cb547758f2mr1364561685a.3.1771404276625;
        Wed, 18 Feb 2026 00:44:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5b051asm4338028e87.72.2026.02.18.00.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 00:44:35 -0800 (PST)
Date: Wed, 18 Feb 2026 10:44:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: clock: qcom,rpmcc: add msm8960
 compatible
Message-ID: <7gdpb64yu4ydcgfejfavq4g6vc3rz7cn3h7shle7gx6upscpki@podywah6acxh>
References: <20260218-msm8960-sps-rpm-bindings-v1-0-bbc11c0d4f24@smankusors.com>
 <20260218-msm8960-sps-rpm-bindings-v1-1-bbc11c0d4f24@smankusors.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260218-msm8960-sps-rpm-bindings-v1-1-bbc11c0d4f24@smankusors.com>
X-Proofpoint-GUID: sYxoUq0OqcZJtnw4sOCyyzcBKCNJwtVb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDA3NiBTYWx0ZWRfX96kMDzNOEclL
 VnvPiqZI9iw8v9jOfvPcjETKnPpOA5218cm3tvR4FOO/5k2T5xP/n//VatwWaRhc/GJSOjT+oko
 q4t2LdsJd1/Vb7o7m7z2mL9UNNzpTDBWgn8rNIaWxSkTaIMbdqcEFpX3g3nU4n47Jo6xj3iPTmR
 SXtfmnaCq9+shQ5aREMvSfdr/86HjnuutGdkWs3isVbVm3k/sW7A43Q6pGssQ6jyb1kh3nmOPdG
 iY09tDZJcnGNGibSf+JPkKXqxCcwGWzzBGF8Jv1y/ydy/6rFZTdUdXGf5jonQDcmeQXjixPlTOd
 hrcWODFpDd6w6+73h542FbLOKQ9vXdNhapDlehVQsNexTparK5Ow6Z0qqbAD1lyGZXZPdG1qUfr
 XxYZbGdWvZCcBCPr60aU21kUt5QxUFrTMQD1nojV3TQOu6KVehOTDzgFmqNCE3WYeBOL51uC6Ex
 hdl6MkNEvOyY2ut+KGQ==
X-Authority-Analysis: v=2.4 cv=JNo2csKb c=1 sm=1 tr=0 ts=69957bf5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=wxLWbCv9AAAA:8
 a=HlxF9o-pF0jV7hyblJIA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-ORIG-GUID: sYxoUq0OqcZJtnw4sOCyyzcBKCNJwtVb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_04,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 spamscore=0 clxscore=1015 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266323-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A258815442C
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 06:59:05AM +0000, Antony Kurniawan Soemardi wrote:
> Document the qcom,rpmcc-msm8960 compatible.
> 
> The MSM8960 platform shares the same RPM clock definitions as
> APQ8064, so extend the existing conditional schema to treat
> qcom,rpmcc-msm8960 the same as qcom,rpmcc-apq8064.

The way you implemented it, it requires driver changes which were not
included in this PR.

> 
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
> index ab97d4b7dba8bc8d38903b399d2bd4bda087db8a..f84d08199e47f45ecb176d350eeb7df8c3ff506b 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,rpmcc.yaml
> @@ -36,6 +36,7 @@ properties:
>            - qcom,rpmcc-msm8937
>            - qcom,rpmcc-msm8940
>            - qcom,rpmcc-msm8953
> +          - qcom,rpmcc-msm8960
>            - qcom,rpmcc-msm8974
>            - qcom,rpmcc-msm8976
>            - qcom,rpmcc-msm8992
> @@ -90,7 +91,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: qcom,rpmcc-apq8064
> +            enum:
> +              - qcom,rpmcc-apq8064
> +              - qcom,rpmcc-msm8960
>      then:
>        properties:
>          clocks:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry


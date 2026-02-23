Return-Path: <devicetree+bounces-267423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKUqOBJZnGmzEgQAu9opvQ
	(envelope-from <devicetree+bounces-267423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:41:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD331771E3
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8857D30ABB94
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50DD423AB9D;
	Mon, 23 Feb 2026 13:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PlxMz/CR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LdasqOgq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D224B267AF2
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771853886; cv=none; b=j3jBiGLWNDLZ1os15FHd5bWhwM4Kh83B9p0kNW7C52yZYS06TXsSPwt2RsFsSVyFOp1NuFUC2pcwqkWTMwE79lorHIqRHy7xGnoaBhFCA/LVHh4xFrDGnCOACz+xuzdAGLoWdXURDJg1pZsUDXH6gUWEaRK2y4FCy/Ac0CDBtPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771853886; c=relaxed/simple;
	bh=1c1gquLfvSJ+JW0V9LV0gRBtqRjxxuGL6ryTeiQhipc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=acSjqnBNL2HUWisFbNA0ZxTpjeMpbHGrL5ysq0tJzxk1W9fO0wtSHKcpZd3b4f87r7KIhl83lBxvzlHwh3UxqeRe77RabbvrgOMKr2a9HtS3TeUuspjZvsrNczsxQtmyMLh45cep4TNyRIOiRi+Pg59jQnVRw7dUgdQJdfysujs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PlxMz/CR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LdasqOgq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NAWELB3732751
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:38:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nHxPv6I4Z6dO3Hj6uV42QIGX3GK7K4BGPsWpNavZvBk=; b=PlxMz/CRZi+cXbvz
	hmTnU9cezQpHsZ1BcWGZMSnsX9VVcbOyrAG2y3dXhwwbBUa4A3KqDiJWrSkNkuGl
	QKS/K/sHo7ZDjrP0Li77lnLvmPDrTPRP7rrYWxExqDwNrP35wWqRc8HK6AHXtnFx
	tModpZVK3yjPTfFfurVauIwIA1IPDzK90YsqjlHQd+c/IuVttP55nql3MIYaj+40
	5vmzmgQ8yCa8+ZQOLL0Bat+ytPGOayi5kJB1bp+5vyEf7ECaU5tzNMBnOpmbDnhh
	zM77SAHIBjufLAIZ8iI99y4vki0r1Nz7lONXStJsAruaQZh6ixYlXe+SFASGpw5I
	0sXFpg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn7t8ffg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:38:03 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb4b8e9112so384400585a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:38:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771853883; x=1772458683; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nHxPv6I4Z6dO3Hj6uV42QIGX3GK7K4BGPsWpNavZvBk=;
        b=LdasqOgqWWOV1e9M3JCMHOkuV4OMWAivF8k54x0+y9TiRgz/PV5fAb+mgarDGcX0vF
         VDvRACgJOmC9ayJBjF851M55SzcXXW2gbTWfqgV2uC1Mh2dI/Zkd+ZLMIZKQor6yd4Dz
         MQlK//ycWeobNQOl+l5zvI8lFKiOSxf1xWLCmdwAzBQk47HK7QtA/KHFAF9KSHBcCqGX
         o+U7+Gq6OQQgirBuK/aAdZ+zm15KncxHdorFk+TUPdGImvmCcd+/aQtwDmJJ0Q1SnTwY
         +MrloE6NXBNfbHCq9ei9dYE1HYevQ6Fr0mFHSWpaEhwNeis+Ve3wWwGUlZh89E9DJW10
         J2pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771853883; x=1772458683;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nHxPv6I4Z6dO3Hj6uV42QIGX3GK7K4BGPsWpNavZvBk=;
        b=KwbAZOj0cBF9QJ+6dV30975MQ1KGz8Nxw5Vx8MbAiKA1wlVV0xxj5782DreJcOnqFo
         c2ccO6NIp3+WXV82vI+nUbjT5Vax80cZ95684suo1ujnFFWQCgLYrZ1fkiUtnbHp1xnm
         j0fEWIvi+b+mMrm/dC/3RL8EZNfb2tRejNw4NrMPF10ietTTYVnjzTXZ/gt9qIrnp0lu
         q/B/l/2hi3me0HGjUSMpPRSmw86ZSf9xBR5+wNDE4/wwmDMCac4RNZyO+MmEmxrYsuci
         86sXOhF/X2Fn0gfuc2/02NL4LYC7MNcDhCF1/sitDvaFEYE21+JZ6ZWjMcjE8mzoGWEV
         DO1A==
X-Gm-Message-State: AOJu0Yw6l23EI36BvU4DQdCIROGjy2nA4hicuZIWW502q30oQ28RRjlQ
	fCYB4vFKefdR8DfCtUbQqUVgPBUyEowyP+/FlRIgiCbe2h7OYKnSNup/R4myX7eoEZexVW0S8QY
	HmBwxHTR/Nl649SWgrVQJ6lsrRnME4FAsKv6WD1OJj9HdNVh2/3INMLsmoWIrAbhJ
X-Gm-Gg: AZuq6aK2Ij1q6mIYn639KxwqsHwIwq5sXQF8Y7CPdoXV74cG4VpPKs7kJuI5kTHYuWM
	j/+yO8rsguhYFfGcAEb74GP6n74fjYlB3dD3I+Z9GmbxXomTRCyJGozTY42IqeHQpMUKUzou1e6
	TESSAdgEJL4PLTjInzgj3sFMwo2gWewj+1eWMz/qSF7duFC+hXvucxoW6k+McO1gdNmzz53+ZQ2
	Jb1JKpVYwGqYIz0AuamsW4n5ZfkKANss+AGBqmVQe+XNKwDGb5ucdvYGqvFbv/IvEXuuWV4dgTh
	mMdz7VidEWOsRexzR3iAIvgPLwfObxaGxRgSqepOSB9sBE8JwMrgFpwG7O/d0fxuRUMW+zijuKp
	WfRXF3ZrjdB40NmsiHhy4BD0RCEiFvD5fl5Nd8eFoSUyl/vC8mss=
X-Received: by 2002:a05:620a:7082:b0:8c7:f55:2062 with SMTP id af79cd13be357-8cb8ca82021mr971549385a.61.1771853883020;
        Mon, 23 Feb 2026 05:38:03 -0800 (PST)
X-Received: by 2002:a05:620a:7082:b0:8c7:f55:2062 with SMTP id af79cd13be357-8cb8ca82021mr971544385a.61.1771853882505;
        Mon, 23 Feb 2026 05:38:02 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:3fa4:55d7:7aa4:50d6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a42ea5ccsm89398715e9.16.2026.02.23.05.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:38:01 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:37:24 +0100
Subject: [PATCH v2 9/9] soc: sunxi: mbus: don't access of_root directly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-soc-of-root-v2-9-b45da45903c8@oss.qualcomm.com>
References: <20260223-soc-of-root-v2-0-b45da45903c8@oss.qualcomm.com>
In-Reply-To: <20260223-soc-of-root-v2-0-b45da45903c8@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Danilo Krummrich <dakr@kernel.org>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>, Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, driver-core@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1061;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=1c1gquLfvSJ+JW0V9LV0gRBtqRjxxuGL6ryTeiQhipc=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpnFgircAU+0jsrAZZ/Aj6LcHzqbHGAS/DFEYZi
 t34Eup2YjSJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaZxYIgAKCRAFnS7L/zaE
 wxcPD/47w3hJqf6FKWPzlvr9S86ReIdYy2gUPFLRaYv1Orw7Hx4Mu5VCL3/KMAaPpiCzFahyo9Y
 S0OUQIgsb1kqb7HIj2+UxTES2J22WsLFYkRYulcQij6J/QljIy0cbcn0uAydjmdb6VuQOawjh10
 FnYXW4+Ib3q6Ce98AoC/U1sqR36/lA78aqRwfswkLIVIhwgq9ERvUXZ0F/h2y/8wkYrbfKG+WCN
 4VlGIAm20rPkLeDtPLAqp1Dcy68aNnI1OLqZ/KsYm9FnrOLtaNxduEseaaxwc8bhbyTtfmjYATL
 EoHz8ee2gD6S7XCtTw3SnuW4Ky64+giBafa0XfNBpPxKAawFQCKd8XByhDvXVlwRdQikXetq0ZA
 k1u8bp6vufJQXZLgmKBXQ6Y3zfD/vgMD5ptFcZr2yn1frat/EBwcg/JBtnoLQPB32Qbk3PmdGhA
 lNFBV7VYN/yATKm2UOsdZH6vEHm2PpcEsINOBkjcwQRrElzKw78vx2mCVTVyBZW8bTWsjBI7ezk
 7WQr8RJ7fsrPuYLcICCUuDTD3QnT4F+TLDnvFX5AAnnPuPJKX/o7ctAdnVJrTMS+wXIkI6pmqdx
 oNi1zzx0nOQy0/iZYV7/+R8P9uqzqXpWIofRAhYkeXQi3fatpIXd82aahNqjbXS4yNa4bMXD7br
 keRpg4pplWqyjpg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=c5OmgB9l c=1 sm=1 tr=0 ts=699c583b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=hcp4X6t0sg7LPBOUZMsA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: c72nPmyG5WCZxkmY-jizZ-N2KaE67ALE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDExNyBTYWx0ZWRfX9dkpJAVAkAop
 d1X3HLA8H7gE9WN9lKaKzbDfM0AzubEnYzmkR/hklYrrtJJbYyBLk7WHWuN5E4glMN4ufIb5lwr
 nQiHi21jA6LPMbBu7E6gWksE180t/KkQjkIz8z8FhyIFcwzdF4aSgTc+tqHboy7FD7DCPvhAwiz
 wt2szEqT0H17LhN2/SOBERoBnt+ya/wgqOP9gCxU/UGuUq9NgzS0U/4ICjV39wjDX02bhPkFsXb
 Wuz9cpU65TrG6h0RIl8sjf8gSIiXh8y/hPsemIQJAgW1gzkZdJY0GrAXFvG0niEGOtEAMqOnttB
 SSdP50GOy62s3RmxF3x5gwOkqeQayoUc9NQnXWRyUxKS1gEM0X6Y/6g3lijddD2Ste46gt5RAi0
 h9EIQW3Jsl63CB+32SxlIkx4G/IcanzHrZYwzGcNLB1iOLpGn4aYYzzQDoabo35yMbL0ZRR33rL
 2GqZrv7pMsOkRHMfdrg==
X-Proofpoint-ORIG-GUID: c72nPmyG5WCZxkmY-jizZ-N2KaE67ALE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267423-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,pengutronix.de,gmail.com,glider.be,sholland.org,nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5AD331771E3
X-Rspamd-Action: no action

Don't access of_root directly as it reduces the build test coverage for
this driver with COMPILE_TEST=y and OF=n. Use existing helper functions
to retrieve the relevant information.

Suggested-by: Rob Herring <robh@kernel.org>
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/soc/sunxi/sunxi_mbus.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/sunxi/sunxi_mbus.c b/drivers/soc/sunxi/sunxi_mbus.c
index 1734da357ca21b249740e089698275507ea98a8a..8bc5f62ff258837d3f3b30cb84b60d1872b31c27 100644
--- a/drivers/soc/sunxi/sunxi_mbus.c
+++ b/drivers/soc/sunxi/sunxi_mbus.c
@@ -118,7 +118,7 @@ static const char * const sunxi_mbus_platforms[] __initconst = {
 
 static int __init sunxi_mbus_init(void)
 {
-	if (!of_device_compatible_match(of_root, sunxi_mbus_platforms))
+	if (!of_machine_compatible_match(sunxi_mbus_platforms))
 		return 0;
 
 	bus_register_notifier(&platform_bus_type, &sunxi_mbus_nb);

-- 
2.47.3



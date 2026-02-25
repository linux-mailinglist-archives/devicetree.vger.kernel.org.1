Return-Path: <devicetree+bounces-268487-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPFFOQEun2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268487-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:14:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC1619B569
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:14:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4F903304D647
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA7583E9584;
	Wed, 25 Feb 2026 17:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B0KSE6v2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZNemjc3L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93313E8C54
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772039529; cv=none; b=j4M8UNFlqJN7ZbPcOcJBg525vLcjN/XjuUbqZj2hySm4aPXoF0Kl8JGoKeEOe9a2Zv/K+DFAZt8YyIiGPmWzsbV/5nuw/eonZYe0x15QOE3qu9QLxfnU9WXrIdOd2EtBo85NhGFvvBDxEZFeCkU5UIKe9YKlcHlNe+7TIYBs4Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772039529; c=relaxed/simple;
	bh=lUtIgAbMh/vNpRAdiwHHkrbPL+Vk6Sh4GYYNaqza5DU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ii9734PwHdpx2G3GfMSYLdlhk5OL4vC3LlXSNmapQ+kLg43o9Kak2ODORzvefuU87yF3OweT1m8i1Arq2EGjZq8/WtO4+JZj0ijUTyVTh0H1VT2fTaq/swsafstx3Yw1W9JtJUNalQltz8flhqnt8S/ixiVkST1NPHj//ti4jqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B0KSE6v2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZNemjc3L; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PH4gaG2561029
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:12:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=uAXRlKsSKgVHXRo/hlqcCpXBiAKwXP05ii0
	Mt1jrQg8=; b=B0KSE6v2BR2faMgYkKqV5TeNf1Gqsf5Bdwcu5HGNAhTwbpqLuh4
	53VT2GyzzV5skXuIbp+HAb8yViDEVPuKdNamsy94Ew9JGcHdV3I6CTZfZrwMGj9s
	FxBSQDlLw8+PF5lQYyhgU2Dec/6XAKcD48nxbyFmC6kAGWA/MfwXPImWI0NhS8Ln
	erbvfrP1scZuEfbdAhxEHFRcZoSTtBvNMlM42oT82ndi1cUSw5RWHXOjKCFlGQqT
	OhVFAB+zsfcDBEQzbeNBFIyC9ByxGbv99Ru8dj2PdvDay7SzVpT6M8qSnnVAiWuC
	fmLdnFweiXgdQrevL/Zqp1EYFd7jEAE+7xw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cj55sr10f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:12:06 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70fadd9a3so4047186685a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772039525; x=1772644325; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uAXRlKsSKgVHXRo/hlqcCpXBiAKwXP05ii0Mt1jrQg8=;
        b=ZNemjc3LCK0fcZM4IMwsoMSylyJoVsqcsiedY03eXMV/2ekUoyjbxdwvdmrS8wNzGv
         bWqkNFsWeAvkpYzGoCAzmqXwmRaJGhbQLhTWpecK6D5M9H4xzKHPdWkQMrwV8BHnP8YW
         v7eDYg2UmNkI++T23pTeoFmY3vDC/6ZqGxo9RVxN2uUGLZFXF1Gh/PaULIq+XweAwY8k
         U2Y44osN4PHfiekSt9eZSiGbDHey7m3fXtxtOeMSFAr+awCTqoxAPrLVSWMB1GviLr/I
         XqGBPiOoC8dc7irgkPbrnDRqiQ0mra2g+dvNg1AZ7jeBO3sLqSLfLKvcmoieJiW5Xtrr
         GUEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772039525; x=1772644325;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uAXRlKsSKgVHXRo/hlqcCpXBiAKwXP05ii0Mt1jrQg8=;
        b=DhOP3Pr8HWxVFdcny3cRC3Z5xJoC4mCm5M/lSaSVuj2TuBxET2Di20jDDKdJmSPU/e
         ulNGlERuzCVEZ3CVqTgywcg6Jof/Rl9gh1qhfHsgDJQB/QKPOjpxNLn74iQA/xIMIQTR
         VLUegkmIvYpIcKYzlhREMbwmqsR1llUNr5t5m4skSxlZ5iERXAYJqOOKlPc2+Kkd/ZU7
         wB/3gJdpe1tD9RLBn05p0UuNMaf9AHhKdjIGw8CO7jYOwUFkMvV3gXumLGoVe6TOG62f
         zrtglN2FSRLMUkQWLNPXBFpCMcdQFKnZKkFsAlfY3A6qHg1S2A1bmjvXJVBNg5J3CGMJ
         fG7w==
X-Forwarded-Encrypted: i=1; AJvYcCURmF84jKkvkxA2WD13McCT1ogtF1//u+9CfM47ybSPDp8Wjlg+aEQpcoN8BAEl1gexDemcGBAaXGsq@vger.kernel.org
X-Gm-Message-State: AOJu0YzdqKmJtF9rcC8sx0MIaubLk4OJaLq9ruZYYRhLUx+8ZtGcXWDQ
	sxk/NJSEHphBgEZMiD+QGYdI4cw0VPnkS5TcVHajgvOEJD/nR0uv/YfT+jEFus8Jio/Jq9PlWt1
	4XfAfm//jhzDnMTYXbgcP3DiEzobXy2qGEtphdfvWJ/H/lLU42WkHl88AyEnNdXhl
X-Gm-Gg: ATEYQzyCvkDPu9BHCEIgEmYKWgVMTI2Z6hGKfYuczAXOYI2HZ5CRAqdJpAUKd/fozYc
	vERrZ/GplFNDoUxJSO1CthmLdPJ5nGpW5Oi5lUrjHzqsYrrew91nDENGBQ3SQ+dCskAW1Uu2A1C
	YcCNbyP4WqgZFCVzHdVnGRT+yTfCyE84ui7rFUbHXTo90XJ8cAzsMBVbk4r2agfbjnnmDNfTF8I
	47UMM4ffw064m3yyJXA2sBEsdOJzv7KQWZkwri6JzKAuRwJjBfudQV5OP1gvLxuT3DzqPBCMswg
	YBJ2RXdhXD9T74X4gefyueUgF3HjiT5Z2M2ZekUzFua6NFwIpDxbwFt0wCca2nIx0qEX8TVO/Yg
	UWTJ/fd2l4VxnRP1PXked4lftKnGTmtjUerPRvw==
X-Received: by 2002:a05:620a:454d:b0:8c7:806:386 with SMTP id af79cd13be357-8cbbcf97f2dmr180914585a.34.1772039524754;
        Wed, 25 Feb 2026 09:12:04 -0800 (PST)
X-Received: by 2002:a05:620a:454d:b0:8c7:806:386 with SMTP id af79cd13be357-8cbbcf97f2dmr180885485a.34.1772039521931;
        Wed, 25 Feb 2026 09:12:01 -0800 (PST)
Received: from quoll ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd6854c7sm186988115e9.0.2026.02.25.09.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 09:12:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>,
        Tony Lindgren <tony@atomide.com>, linux@ew.tq-group.com,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-omap@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        markus.niebel@tq-group.com, matthias.schiffer@tq-group.com,
        alexander.stein@ew.tq-group.com
Subject: [PATCH] ARM: MAINTAINERS: TQ: Orphan TQ Systems boards
Date: Wed, 25 Feb 2026 18:11:36 +0100
Message-ID: <20260225171135.122955-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1575; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=lUtIgAbMh/vNpRAdiwHHkrbPL+Vk6Sh4GYYNaqza5DU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpny1H1OE3Y0Zw2+jF8iqQR9ncHs2XAfCuD6jNY
 yg1lhx0aeyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZ8tRwAKCRDBN2bmhouD
 1z2cEACPrAM7M39NN5/GiyNmPWC51/WqMFstXNtfr92G2BKdF13xgZYoo/jFhKt4ed2CA4JRW/S
 d4SpDiefTVbEl2q7SizU7thmiKY80CUNa/5MzJ4D9aa04P0UjcT9sln8cX9sAxYS3WLa4en+jVr
 giCnZQaHaccNekgM0jyGyR0OgQUkp4Hnnae+fZHx3VsZ6HOY366llKj50QUST4B6v9zTEgxGjRX
 xlnXqhkyjaYcaTe6t6xxPwlSBCi2EvGALNN05Ab+e2Q/5Gmh4D6faGd/Z63wWPQEaLE5QH8jfqr
 voliSKNnogG/BAh2+AcK36XVZ66HkWosvbKH9Jw2zbeIyAoMHh7e8wAcTNT1R3NjMdhjHz0nIC4
 t6jnH7o1uChADZ4ZZGRZPMG0tyzdfSFl+osFpPFQeC8v/g09qGaVfmj1w8hcfUf/mgN+15d8h7Y
 A7ylhEHWQke3gGNo5iyd8CI24PZXmbeIFzKDUlD7PpCWzPI+aMTN34+dZFVjMaBRuztJTzV1xuU
 Gppujo2WK5PXzlpojUXx6diJWSPCKQohIEl3V7rMQpbnc6hRftU+lpfe4qJeRL5Rhds7EOcLx6j
 qR1IOGKSN9GZ1VxaVPsQxMhuh7zJhhd2qEWHQnlwg4QyINmC3mrWEOhSWWRyHwPhOZouDEZ75nS FLN8nE9LEL98+7A==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDE2NSBTYWx0ZWRfX0I2jXDqRlRHe
 FJgGH2Er7udhK7+qoI4kkhr9IMICTHAUFMqkyaPaS1U3eCXlkzgcBmIVbSRg9L71OTs3pZnwuEY
 Vwznr/161yKxbx9yBEbEJ1/OLD9CJsoFqtmdosgpWItvJR1HY+E9XvzfKj7GoMJXeNulXJP+hUn
 dKuc797OnlyCFcBDRm0ilDCf/17LxPh+XHnwaQtGTE9AfcVXCES/HLYHRI0m+dQZgQJm6w8bdsU
 nzpQjDoS8N4l78Z/4ud/vjv5aIC0+LzGPUV34QGBVBz2ujFGCjlfm/aemgUW90yuj5lzBnjZM+w
 8uPDY1ye6QTtRwCadKz8axrcTxT3VpQAaiS3wZIih3ffmgMi63L4AIOcGrJ/K5UmojSCZpOc1xc
 P6e/C7n06vdOJkMhPovX8Q65viUFzzvD1zmTpLMMgv5ymZNbypCLO0bBxTzbuDmRRaFnst7gYww
 ZjmkUV3p3kjvKOtp+9g==
X-Proofpoint-GUID: sjnYmgkYdmKkPt-PvZPuDJGOezJE1GP3
X-Authority-Analysis: v=2.4 cv=JfGxbEKV c=1 sm=1 tr=0 ts=699f2d66 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=8f9FM25-AAAA:8
 a=VwQbUJbxAAAA:8 a=1TEZt6uuAAAA:8 a=EUspDBNiAAAA:8 a=MG-3fz8axUtF_4d9Gg0A:9
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=uSNRK0Bqq4PXrUp6LDpb:22 a=K6b9sarf6D5yyto29Wkr:22
X-Proofpoint-ORIG-GUID: sjnYmgkYdmKkPt-PvZPuDJGOezJE1GP3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_02,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602250165
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,gmail.com,kernel.org,baylibre.com,atomide.com,ew.tq-group.com,lists.linux.dev,lists.infradead.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268487-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:url,tq-group.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9BC1619B569
X-Rspamd-Action: no action

Emails to all TQ maintainers bounce for a month or longer, because their
systems decided to block smtp.kernel.org.  This is nothing which can be
fixed by Linux Foundation IT staff, but aggresive and irresponsible
email provider.

There were no answers from linux@ew.tq-group.com or anyone else in TQ
Systems after my inquiries about this problem, thus assume the mainline
efforts are abandoned.

  <Markus.Niebel@tq-group.com>: host mx01.hornetsecurity.com[94.100.132.8] said:
    554 5.5.4 Your IP address 172.105.4.254 has a bad reputation.

  <matthias.schiffer@tq-group.com>: host mx01.hornetsecurity.com[94.100.132.8]
    said: 554 5.5.4 Your IP address 172.105.4.254 has a bad reputation.

  <alexander.stein@ew.tq-group.com>: host mx01.hornetsecurity.com[94.100.132.8]
    said: 554 5.5.4 Your IP address 172.105.4.254 has a bad reputation.

Cc: markus.niebel@tq-group.com
Cc: matthias.schiffer@tq-group.com
Cc: alexander.stein@ew.tq-group.com
Cc: linux@ew.tq-group.com
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index faa914a5f34d..f446fb30cf6c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -26781,7 +26781,7 @@ F:	drivers/hwmon/pmbus/tps546d24.c
 
 TQ SYSTEMS BOARD & DRIVER SUPPORT
 L:	linux@ew.tq-group.com
-S:	Supported
+S:	Orphan
 W:	https://www.tq-group.com/en/products/tq-embedded/
 F:	arch/arm/boot/dts/nxp/imx/*mba*.dts*
 F:	arch/arm/boot/dts/nxp/imx/*tqma*.dts*
-- 
2.51.0



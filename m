Return-Path: <devicetree+bounces-263606-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAgWOG85h2kuVQQAu9opvQ
	(envelope-from <devicetree+bounces-263606-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:09:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81212105EE7
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CC623019521
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 13:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCB4934106A;
	Sat,  7 Feb 2026 13:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zd5BzEhU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B1234104E
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 13:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770469740; cv=none; b=ZQ7+oWSjW51r5KHwxQhql382CNzMu+bG9RDd8ZBt6rBRZxUITYTGy1Nrk5DiA9nZtECcHQEmv9jJkHc0si1o2QseVgYI9HIi7PaB0zUnxu2B8AMop3JviFhOqDbgXs53nyCk6xwI46l4MW9GQr6mbWdGItDm3F0ACqrPoIQKkAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770469740; c=relaxed/simple;
	bh=luQk0DerAVF25F8oYa5dPXRxiY1DpjkvWwyPxuw+n5g=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JcN1dzUALqTsvreG411aQrMxqbwB3dyo9Ww1ioLWBj+PIoE1UvP9r2W3/BBdmucBT34WB8K39f2L9wrsfW4r1mbxQFqKwfNRI0EDu3iB4piIiVib+hSOyFshuni+Jln85DffO7K8DPKSh1mkFRTYLPwdutvnmdk51hMPlHG0cSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zd5BzEhU; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-7947cf097c1so15280917b3.2
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 05:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770469739; x=1771074539; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nQ+/85pWHhHQTZFmm+5xHUX3idtLaulzxY1FbmAsiZk=;
        b=Zd5BzEhU1oVEh/s4/5Ip2phNlLy+C+n1715i4fWw/vy5bSdSDAS7vpPsVCL9GJJAkT
         u7BVQc+5KjlpQUh3puZXFEXwzl1VNtDaJowHzboYQ7ZwhH62ihGGJ0cV12HznlWx3mNA
         HNptpUplQmW3IlRbYiaWXiX65NgweZfiVa/Qf+ypDCGQyVnmj1aPy1/zkNO1WhladLGq
         elS7IkzApzs/4YizlorCdKt8bOooRBG3OagYZAmaqMaSvF8oMmr7/MrgpHAMRsA1YYbf
         vsQbWugadqiSc9M496ICBwC1AqZuvtcwU1NAYsZz+r0g3ldqMQI8U100fhG/kWmXAsMs
         IjcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770469739; x=1771074539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nQ+/85pWHhHQTZFmm+5xHUX3idtLaulzxY1FbmAsiZk=;
        b=NHFYxGwMLipxGPAkMOOplSHmlPgELRFntXUZdFf58ULm3mB6O+OhcvQzByW2QNsXgb
         aPdc/yyQgZ93i2w8XoqecKhQiz/1vm1+HNpyv3C7mGLCBiI6QMzxe4sDiN3pUv8DwYBh
         sXeodTSTkXUbyHynNv8y3YSUGZbyoa3EU4o4oUBonvZZiLcUsjO1v0SiHnJiqjDw+mAN
         6xayrb5a99JELl2z8p0p0AFVqCXsYeLYRurTIczF+E5Tne8YZ/4pqpUjIZ1UHp/bOXsY
         5b2/r5Dwu91REWHh7VLqNT8KRnmomMm5JCG/Lr3FiUqWgZCTfb8osLUfGfQc1EWgaOe6
         Sydw==
X-Forwarded-Encrypted: i=1; AJvYcCWYmWZt44eqTO6JpLEjtKvVmDpN/LBLoM7sAylNAlONT0SNYkrtmmkEiL2bKHZxvKoWEiBZ5oYL8o8X@vger.kernel.org
X-Gm-Message-State: AOJu0YyIOiyzWY8IogSZh2auUvo49MULJ3qT1vLSQ2MtNszTv96IzL9C
	ZTRpBZE92iujhWam/KGciSly1Ub2f0ERTvEQOrYhQPWSGwIg4MrFvHtk
X-Gm-Gg: AZuq6aLH3lU74E4kc5w5O3p7Lj8QkBU3CcxrPBgF+NEy57OLJSWAdIiT1c4EeZRfslg
	mItLjRN82+0Yl1uofoNNMucvHtoRDd7ZABVGXZg1FWdOo+NJY2yoBJK3GzSO/F8ET0inCKh06c6
	Rq/0LKx8DRkDKbPsWGquMfSW6lCHB5xFAdtw/MWll2PQ14rH2IQ7l+8Cer5gqmKBMi0ZfgWv4bc
	wxzx6Ef9gaabsMONQE8+BpIq7fG/wCfq/8/SSmNLyL7NZgbzgCB/KZirPNI/NF3mCXw+/eU41iO
	ZE9eaXZrhvl/6awThq5DfYIAmMJph008cYHKGfHlhNN1ADr+JEzyfP6aWbJuG5O4ydsEt9A/Lzt
	5MdYnJrPTbUWDoRNTjfPSCWP4rRvpFr1KxEL4Zd+SmHm/0BgXfZktewEbqu4x220BTha76Hws+a
	+4I3mYXkLJob5QoPpwqnjeaJmG
X-Received: by 2002:a05:690c:22c1:b0:794:ee65:6ab8 with SMTP id 00721157ae682-7952ab62aa4mr59344667b3.62.1770469739467;
        Sat, 07 Feb 2026 05:08:59 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7952a1db63csm46228197b3.33.2026.02.07.05.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:08:58 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: gregkh@linuxfoundation.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2] dt-bindings: serial: snps-dw-apb-uart: Add RV1103B compatible
Date: Sat,  7 Feb 2026 10:08:48 -0300
Message-Id: <20260207130848.2833599-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263606-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 81212105EE7
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

The RV1103B UART is compatible with the existing DesignWare APB UART
binding. Add the rockchip,rv1103b-uart compatible string.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Make commit log more concise.

 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 6efe43089a74..685c1eceb782 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -71,6 +71,7 @@ properties:
               - rockchip,rk3568-uart
               - rockchip,rk3576-uart
               - rockchip,rk3588-uart
+              - rockchip,rv1103b-uart
               - rockchip,rv1108-uart
               - rockchip,rv1126-uart
               - sophgo,sg2044-uart
-- 
2.34.1



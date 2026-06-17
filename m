Return-Path: <devicetree+bounces-312809-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zzl9DONJMmqzyAUAu9opvQ
	(envelope-from <devicetree+bounces-312809-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:16:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC236971B8
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:16:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=DCgq1obR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312809-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-312809-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 26E9F3006212
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 07:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B48343ACF15;
	Wed, 17 Jun 2026 07:16:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723C03BAD90
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 07:16:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781680604; cv=none; b=Eyd7KTp9jBYWa5SK0tK/FW7SSNff2h+8aKXi3mszhzl+jSmXUjDmExZvrcO9Ok8h9iRV2bmkQpXyTAX+BbaaPEOAdifpw1Pl1YMSou7oAzyBcTH/JXbObMfLqA3DefNpGHqmAxm1c6QVnebIguWtbIWWKw6hlpXTnSWIGPnEhvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781680604; c=relaxed/simple;
	bh=F+jC2JZdLctk3NBnz9HeD4OXLJBXRAv7UNFVJjBhlRY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E9Ui/ueLDKDt7UCsQ/FF6RFUTgR96f65gMwsYQDfbdZDlBb8wW9M4VpTIyl63SjKqHYdEdlLCgS/EyqcsWvQPdMNjXPDfDgxLtINOjcgLSRQs8YiiqnUyjfojCTej/CeF7PkxlxLAcQ6RRDNd+P1DP8n0i3eeQ4IDhWi2r4F8fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DCgq1obR; arc=none smtp.client-ip=209.85.215.175
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c85c531d4a9so2093333a12.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 00:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781680603; x=1782285403; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kGqxYO2Oa1YzQdRB279ndYOf99EMUYTgi9douNfsaII=;
        b=DCgq1obRRNLewy3Vxvz9eRzOK4Uuo8npJauu7ZdolNzJCmnr2TmWEREH9eERmc7lNa
         tCoikeUnWAIwANs1xnqrORsr2jgeOoiKFA8WCqsOXipoOEzMLFzxOgkOLwNwG3IiVXUX
         8GkhFwCN+7bIs/KwFWhbpLPff/C9RPHpdVvWPSO/NTrZP2DP8wdUtMdPYBmbn5Z/HChF
         460wMNCSNgw1jkURzyh5KxCUlgV6H9IODX4XXHMEkMCf9A0XhsAKpwyduwxCQdN/tK2o
         hlk8pKMZwiEPeAV4wbXOKEC1ixucjBcsfbWZ/xGVTq0ipqDabZGVbJtPPPMVEiqdBrIg
         ndQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781680603; x=1782285403;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kGqxYO2Oa1YzQdRB279ndYOf99EMUYTgi9douNfsaII=;
        b=TNtEUYrXZmc9TBbzFYjEjqq4iaWqmKWYKvI5EdUf1PnbOqlTelfFymy3zHaBEd0Tkt
         pUanMywsJKey3RZKfA+hHHcMxwNBNjHtmFvxxl7zUQXL5bwxyjGm/iD/p308ZO1CbuGm
         apJ6JdL3rX4ji82vpz2kjg+Ks9tNHel9SII5QOY7ZfdzZmWwHzoq+Kf/c/eGo8nMAGf3
         UxAwSoJluf2WwEbj443rOufZvVNosMqXJAGvAGGUb8fOuibTb+QncVsYAktaMj+cmLtp
         p4oS35PcVPXWR/HBNt1W/ln9h0X672qJzEO4MZ3onL5yV8u68Iqp6KRobuts9AA7Qxmu
         3U0g==
X-Forwarded-Encrypted: i=1; AFNElJ8cRNI1q+MPliqhJ3nAbAq1RHFBqVT1oJmoCVSkeUKY8n1hQeocaFKuKgphXrGaNoFe73tbY58a4xds@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjqv/SVFOLH4qI4IS44EC7OlPBqrlyyewfWRbkvY8DvUSsW3UN
	Drk0m77WHCiv+WGFYlcb+8Jcg0RABtF8Wt7jAzDXKLbIcaxy5p/hpwfP
X-Gm-Gg: Acq92OELV2ry4aW5p4z4r3HqUy0A9cwCSwB+8tJJbhrtW7LYWPFEbtur/bGK4jkR6oz
	DspYt3WVzbW0bt20nh8kTMKZUXNYj6gRsplpuV0TXRu/oF4NeNMpvNT0m0bPW9oXGKX0UAgKL+q
	ittPh8lSPJCRxhwEBZJdjqGj3TC+nwZMKy39rAWMQZMHpVAsVpOaeAGuC49Bgdk2dP3K3jfTjM3
	aA5NjlqpJqoWEyfursE62tOg6S3D1fFhfByh+VD19QfAQwRc+C9LMM6Er8tNkO9oHJMMGKdpUCA
	uOeeC9uwj9GV6TvO3VsrRXkAO5rA8QEDzc4mzvMGQSx8hkVgB0sFaX8jkGMdV/vBW01P5ugEom6
	j5WSpz+4T3soUhlasODY2bWqPbhOuR7/J6MVXgKksSREK2HNRjvWrWZVurqmMRYRJ134lnLVBT1
	eJi1pa0VOm6g==
X-Received: by 2002:a05:6a20:6a09:b0:39b:d937:8020 with SMTP id adf61e73a8af0-3b8b80f27d5mr2810990637.42.1781680602489;
        Wed, 17 Jun 2026 00:16:42 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a52:c491::1002])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c866519faabsm13653439a12.24.2026.06.17.00.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2026 00:16:42 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Arseniy Krasnov <avkrasnov@salutedevices.com>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: amlogic: meson-axg-s400: Enable pcie_phy
Date: Wed, 17 Jun 2026 15:15:59 +0800
Message-ID: <20260617071604.635627-5-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260617071604.635627-1-jerrysteve1101@gmail.com>
References: <20260617071604.635627-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312809-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,salutedevices.com];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:avkrasnov@salutedevices.com,m:jerrysteve1101@gmail.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-amlogic@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2EC236971B8

The meson-axg dtsi now disables pcie_phy by default, so enable it
for the s400 board to support PCIe functionality.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg-s400.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
index 285c6ac1dd61..7ba249cc3d56 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
@@ -448,6 +448,10 @@ &pcieB {
 	status = "okay";
 };
 
+&pcie_phy {
+	status = "okay";
+};
+
 &pwm_ab {
 	status = "okay";
 	pinctrl-0 = <&pwm_a_x20_pins>;
-- 
2.54.0



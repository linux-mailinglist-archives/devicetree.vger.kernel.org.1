Return-Path: <devicetree+bounces-316379-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SIcDNYbvQGp/jgkAu9opvQ
	(envelope-from <devicetree+bounces-316379-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 11:55:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7F16D38A3
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 11:55:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=whynothugo.nl header.s=fm2 header.b=Xf3+DEHD;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=fVjRtSgg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316379-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-316379-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=whynothugo.nl;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D92D43004416
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 09:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F18D350D7F;
	Sun, 28 Jun 2026 09:55:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B2A331EBA;
	Sun, 28 Jun 2026 09:55:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782640511; cv=none; b=Q8z3CFgM3kse7zGMaRqGzcwOTnK8l6NxNYjT9l9Sft7exoeqp3+e3KiIm6hQr9M84ydIHCZw+HCQyhge8YkoT+2G0myhNwDqaUkQVgnZsDauUDRW61lNgsISE6oo7/ZQEf/ZEB64sa3cC2LcNQ2yozOgYlE9N8u1obaYufOVHBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782640511; c=relaxed/simple;
	bh=j6bCiAcMt8BsQBJ0rxI6FWEW9qfvWgb1MSKXcpvsBSg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=S1OPLWObB9fj0vFMth3td2oGH93F7RCrefF83EnHzBUQbkfsYVAotFujrDy9L/TWscUhgeWlrK779Ql2nw2QT6We8GRI1dfTVtZvdFkUQcElduIKO3Yebr2/BQm/T1VHjq8OmFKqlVVmjPHD4Rd+CZxJp2pImhdyebPVXekB5bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=whynothugo.nl; spf=pass smtp.mailfrom=whynothugo.nl; dkim=pass (2048-bit key) header.d=whynothugo.nl header.i=@whynothugo.nl header.b=Xf3+DEHD; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=fVjRtSgg; arc=none smtp.client-ip=103.168.172.146
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.phl.internal (Postfix) with ESMTP id EC3CBEC0169;
	Sun, 28 Jun 2026 05:55:07 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Sun, 28 Jun 2026 05:55:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=whynothugo.nl;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1782640507; x=1782726907; bh=Z5zuYXmmI0
	JsqCCZmMVooswBo+HyKuQAEnd2ARkWiEM=; b=Xf3+DEHDAbA1hb4fBAxC0pHADL
	RhmEZCfv4g/0TXfa+Ue04sKbHOdjWlKe0IxMQD9KgT4PvEkMAZmBdNCTJnqqg6qA
	dONYLNJ/Danl0ADWBznKrmAhzqJhJpevz+ziUZdf0zFAg59oqUHSn5UUPt7sFiF7
	Jl0wqNMDCONxIWxiBid26Vnv6kO0nkQRNall33uw1MjilJGkzgER3xfNVHPqhBEC
	4sO0p3qo9Vi06wEtQDhn77UKeZpug84DIiWnADBWZdqBc+7H5fBhWkRwMSa+heY0
	x8IsgutleuZOA2JcCil1EzMMr7A5dsxIDmktRyt/plDaVaDw1v3iCHqkMSJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1782640507; x=1782726907; bh=Z5zuYXmmI0JsqCCZmMVooswBo+HyKuQAEnd
	2ARkWiEM=; b=fVjRtSggWc41oPEf6ZSvnAUtyd7sRhuh+7NYlQz3jwxT7MYoggH
	1lsW3bHh6ndwNWx+TXaK+RIfah6h2w/b0nH3cdoYefT3wJuem1+5GGo7zwtZK/hv
	02tWeEDVzGGi/7326j0jBQEmtMJ8ibs/GbP2zMv4O2kMlEqgPf8QgPp91s2nUrv6
	5i1G+ziNIxAsOC9Mn36TATFOFbyF0PqP0xzG0QvVyNQALXZwUsOgqFyF25Vm7lMv
	hUYN2Rrt6U7HssD7wYKpu1h2yMcScv66wPAjmPPCLLcTC93hz4h4rHdEpnWGYDVG
	n12wbtRC2c2lp9PwgQQfbr4hBDXyBGBmSlg==
X-ME-Sender: <xms:e-9AakeJ1GSuexYFQeVfCR0dq6hwQIu3cnZplNKL_GYirxWtlkN8eQ>
    <xme:e-9AasO0StoYnOfhHjIDRaQUl_KtiTzfZkWlQxXTyGXfw_E6lvnH2PoRx0acCwraw
    zV_5LA7hLyxeaKzFK6TC7pg5lv2o4fEFpAz0uRJr515KRII9AB11eU>
X-ME-Received: <xmr:e-9AagWSumHBpesPVuaHLHQT-F_JR594jqSVagwwl_9FD34ah42Vcnjkjd78FCbV_9Wnhxgc-jZPXs2ps2o>
X-ME-Proxy-Cause: dmFkZTGCg3NKO7YZXHApB1ryaQzWoEc//Zls4Hbbwe5Utl4xoKmU9WQ7UWoQSEgZ/RJay1
    ivKnLTVYO2N+3QNdZJ2wIDrrb5dGLRQYUR8v6ktWCUFcMNBEv4rowmd15b3z1TRpfU8c1p
    M+7UXuLMcPe/mveibb+6/qubMmoTCD7HmQqyPt8rm4DGMqDQliNrGZG2LqT++OMcxIRuQD
    lJMXUSLgQRR6HdzLL4rufs6T1Za6UD5wzFE6W3ArgLc2Dp1TBZRvT4rPxpj+AOnHv/ZcVe
    x/EfHZR3Puc0FdQZ1AN4cKSSdpGl+e89IS0vtnhERujWoH5V2FoUvQ8LVOzSUad39W+8Ce
    BqWFXfoxxkoP9qNOore9ams2O7SwzSBIHRODPiohvZv5gDG8/ctGjLnXkNnvHRvWJdvUR4
    GIDu9cG78xY7EH9kESMunLew4KVYPxVXBkvUnPlnqYVKyYQubq7rEm7TnzbMhAvL/SQzV9
    tQFgoSVx4FR2DphirsGzr9GiHdKAtq6XG/eppwQ7XKdRu9u5BPKoLaQn5b4Qk303qlil3x
    9E5zDXvajfI6DWTlCGIf+bYA2+TQypDjJVlEG3dqKv34hZPE/GLALBVMX9eXR20HK+8iDD
    tBqWWXoNM9EgOgvGsvpWNS+wGiKP8oWuQQi1Atp1tK73Frj1GkqZKxhe7UaA
X-ME-Proxy: <xmx:e-9Aasy6rvAEoFP957DH_bCu1aEVNp1M2AiFY_pEFOdU4upoHzNQBg>
    <xmx:e-9Aav-SwxsQA29D2BnjCbd1qVVBIJ8_H8tUCacPgXh3vgZnr1Bpjg>
    <xmx:e-9Aap8244-uttExM5NCmrM80zraUNecKB_7ykRi5pQI6--G7zF4Xg>
    <xmx:e-9AamVfs5q1kd-jhb-Jsrv7I07jfmTKeFZiB334sGSVZAaNzHZaxg>
    <xmx:e-9AatNwJc9-LiV31WjMzXutc0-dgUwwAR9vVfacAiFCSY_GEk9spYkJ>
Feedback-ID: ib8c04050:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Jun 2026 05:55:06 -0400 (EDT)
From: Hugo Osvaldo Barrera <hugo@whynothugo.nl>
To: Marcel Holtmann <marcel@holtmann.org>
Cc: Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	linux-bluetooth@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hugo Osvaldo Barrera <hugo@whynothugo.nl>
Subject: [PATCH 1/2] Bluetooth: hci_bcm: add BCM43752
Date: Sun, 28 Jun 2026 11:54:59 +0200
Message-ID: <20260628095500.29810-1-hugo@whynothugo.nl>
X-Mailer: git-send-email 2.54.0
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
	DMARC_POLICY_ALLOW(-0.50)[whynothugo.nl,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[whynothugo.nl:s=fm2,messagingengine.com:s=fm1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,whynothugo.nl];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316379-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[hugo@whynothugo.nl,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:linux-bluetooth@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:hugo@whynothugo.nl,m:luizdentz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[whynothugo.nl:+,messagingengine.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@whynothugo.nl,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,messagingengine.com:dkim,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,whynothugo.nl:dkim,whynothugo.nl:email,whynothugo.nl:mid,whynothugo.nl:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF7F16D38A3

Add the compatible for BCM43752 used in Fydetab Duo.

Signed-off-by: Hugo Osvaldo Barrera <hugo@whynothugo.nl>
---
 drivers/bluetooth/hci_bcm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/bluetooth/hci_bcm.c b/drivers/bluetooth/hci_bcm.c
index 1a4fc3882fd2..443969afa747 100644
--- a/drivers/bluetooth/hci_bcm.c
+++ b/drivers/bluetooth/hci_bcm.c
@@ -1591,6 +1591,7 @@ static const struct of_device_id bcm_bluetooth_of_match[] = {
 	{ .compatible = "brcm,bcm43438-bt", .data = &bcm43438_device_data },
 	{ .compatible = "brcm,bcm4349-bt", .data = &bcm43438_device_data },
 	{ .compatible = "brcm,bcm43540-bt", .data = &bcm4354_device_data },
+	{ .compatible = "brcm,bcm43752-bt" },
 	{ .compatible = "brcm,bcm4335a0" },
 	{ .compatible = "cypress,cyw4373a0-bt", .data = &cyw4373a0_device_data },
 	{ .compatible = "infineon,cyw55572-bt", .data = &cyw55572_device_data },
-- 
2.54.0




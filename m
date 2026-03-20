Return-Path: <devicetree+bounces-278369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE/7LzB8vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:56:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC3C2DE149
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:56:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EBB0319A3C1
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 660513D2FF7;
	Fri, 20 Mar 2026 16:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxgLClzM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F1E3CFF61;
	Fri, 20 Mar 2026 16:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025085; cv=none; b=feYlMcdgnhE+aNlPh74QKzQw6q8/4Z+VkR+8ouWKDRMzLntqmF5IIosYVpujfqytP+1CRpP6l1fGsJpoGa0rJ5ZGVh8wFzZ3xClwsnkMAsjV3xCkjUVZ3+Pm8mnmNOFdrPMwMqhVpXKQ6ODI7euechy7CBCf2yP9N3shyXI3i48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025085; c=relaxed/simple;
	bh=BU6kdVo0x4D70Au3+d7B1+eMYVpO0+uLzE4YH6wdmWA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P3tRjLPs8Y83o51PpQLP3paDtMU63Q6sXAoarpnuk1DDHEDyM3oFhBeu6sVtIrUbaVXj1/crsJiH+JQ/bJPuAsNQ8Djf3UBxdzdz2EYFonEs07rMsKRJWF/C0vL+Izb/SURweL1riYq7g5PhOcAzDs4HWaeLlIUYxCl0Bd76Rv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxgLClzM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0615C2BCB0;
	Fri, 20 Mar 2026 16:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774025085;
	bh=BU6kdVo0x4D70Au3+d7B1+eMYVpO0+uLzE4YH6wdmWA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=RxgLClzMp1rr8GwMcLP049NK9cYWyZTO04tfXAwUPr1ApfmRDVfsitquHuJqQeaTn
	 oi8gQxSas0GvNZ5Fo0SrZa579ERm3PTrFr8sPeiPfYHTrMm7h+VCRCmxGstHId4JaZ
	 /+iUPt8+j/8F4/yBOp/R54kTAnqBa3H8UkIZN6KLTLrcnc3oI/0/rme91nAsrjcJ88
	 1u2C0LpCL24lhDDroI5D5EUam8AJHQY6oLuTOx0lPQFHHig2oz69ldNlNeTg8ZwvaI
	 VNGdBTTM5zhxFIkDrtA/dHqZ9qqzRzd8jWYfQ5IdjT1TERVApZuQF9Dn10OUrBkrOo
	 fEI2zTjcd+htw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E85F310987B7;
	Fri, 20 Mar 2026 16:44:44 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Fri, 20 Mar 2026 17:44:45 +0100
Subject: [PATCH v7 4/7] Input: synaptics-rmi4 - f55: handle zero electrode
 count
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-synaptics-rmi4-v7-4-379360de18d0@ixit.cz>
References: <20260320-synaptics-rmi4-v7-0-379360de18d0@ixit.cz>
In-Reply-To: <20260320-synaptics-rmi4-v7-0-379360de18d0@ixit.cz>
To: Kaustabh Chakraborty <kauschluss@disroot.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>, 
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: David Heidelberg <david@ixit.cz>, linux-input@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Casey Connolly <casey.connolly@linaro.org>, phone-devel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1139; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=AmUwE6dlCCX02pALY0B7wBasdQMVqYZC32vlnsSfL44=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBpvXl7/pqB1jbTnOT25HQzbiHjSJxghiXVEFt6P
 c+AXX9sjEeJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCab15ewAKCRBgAj/E00kg
 crFUD/9KPBitTbe3GmT0dwbYVEkdnHvBGVEUT0z8TTB3Ovk+dE4my9X33BijUL52X53vWXx1ek0
 1VUAFpg95Uo0piNjuG/jplIoTHISeQhOjVriFgmyWvsQdqnNYhle+JBDRy2DNKJMo5enxRJcMrL
 gSkG6v+H6NIE0mDPTrWnDlcgNs/Q/coU/4mDojlN64/OtnqnvQWDrAghJKwO044lbWFmN4YhNu1
 fcQf67s9d02FVp4Wb6BoVKVFu4NvrNUcrxV1l8PojD+XTkDkhUiJ//1DUKexFYc4ffQsh+vBxMn
 TvmYjAhDKSWa9fFV3CvRma7GGsYmc3+VJF0smo4GJiBGt5E2axaOvauGNSDqOb0nWEWD9C3mFT5
 d6NvdgKqphchrYP/FcneYLjeg6cLZJZ4Plb3M1Ze6+OHy95GlaGpAem53TZdhQeReK8/p6bhJDd
 EgA1T3nxcPiltag+Vg2hQt/KxFiCnAlelhHX6mU5YmKENS8hI3YpcM+HeuGA8hjX8E+rruwJwLQ
 AFQ+GlEJ9TR/2S/rp3++ONjZG6C7/x3dv7dVTKWPP5e/M0ysepBFZjGp1P3+B5vAQXEzdCQS8Jg
 Cvdmm4fyVmOcMwJQSp2sG3nDMtDYs2weEVb19mcgj0D+Ny7lhkSu7gsoZRNuCBy5errnB9G1iU/
 x+xt48fBeaZTJkA==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278369-lists,devicetree=lfdr.de,david.ixit.cz];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[disroot.org,gmail.com,kernel.org,zx2c4.com,ew.tq-group.com,tw.synaptics.com];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,disroot.org:email,linaro.org:email,ixit.cz:email,ixit.cz:replyto,ixit.cz:mid]
X-Rspamd-Queue-Id: 7CC3C2DE149
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Kaustabh Chakraborty <kauschluss@disroot.org>

Some third party ICs claim to support f55 but report an electrode count
of 0. Catch this and bail out early so that we don't confuse the i2c bus
with 0 sized reads.

Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
[simplify code, adjust wording]
Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 drivers/input/rmi4/rmi_f55.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/input/rmi4/rmi_f55.c b/drivers/input/rmi4/rmi_f55.c
index 488adaca4dd00..776c915b82e72 100644
--- a/drivers/input/rmi4/rmi_f55.c
+++ b/drivers/input/rmi4/rmi_f55.c
@@ -52,6 +52,11 @@ static int rmi_f55_detect(struct rmi_function *fn)
 
 	f55->num_rx_electrodes = f55->qry[F55_NUM_RX_OFFSET];
 	f55->num_tx_electrodes = f55->qry[F55_NUM_TX_OFFSET];
+	if (!f55->num_rx_electrodes || !f55->num_tx_electrodes) {
+		dev_err(&fn->dev, "%s: F55 query returned no electrodes, giving up\n",
+			__func__);
+		return -EINVAL;
+	}
 
 	f55->cfg_num_rx_electrodes = f55->num_rx_electrodes;
 	f55->cfg_num_tx_electrodes = f55->num_rx_electrodes;

-- 
2.53.0




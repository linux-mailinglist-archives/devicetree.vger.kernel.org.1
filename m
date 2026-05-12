Return-Path: <devicetree+bounces-296387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YG9LK1NqA2rF5gEAu9opvQ
	(envelope-from <devicetree+bounces-296387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:58:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B075852666C
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:58:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0A5DE3081336
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 406A03BB12F;
	Tue, 12 May 2026 17:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtlGqH6i"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EBD3BB120;
	Tue, 12 May 2026 17:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778608101; cv=none; b=ceZ3S4nlD6zwTXMYHm/WWxdsSjtokkvUJcyiInzoSXAFiaTSXP13950N3F7k++47uyg7eSyH7tGK2xkN0WbaOM4lo+QLBLTJSsHu1xTME/hhQGXqEPOgGl7YA10CmjlP+tYxLbYHxZiPgjYe6109aFcymcaGQaJSwub4zemrUlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778608101; c=relaxed/simple;
	bh=GdO8sMea8p5bxncxQmac1W2vVytj8wlQkstRRnaIfAw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=WHElZRFAm6/E9CMB/3T8KXUsH99SedRedc4uqTdb/qc807+6B8KjFNQ1znKLSoRYYTnOAEJnMKa80caWDSJwMtu+eIQrmXogrHtdFKsRLdjubl6C+WrJGlmZLDoqLddtjrM7g+1W9ShKfCjXxacvJ9N/cbTGd0JhELIypKCBj1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtlGqH6i; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5926C2BCF5;
	Tue, 12 May 2026 17:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778608100;
	bh=GdO8sMea8p5bxncxQmac1W2vVytj8wlQkstRRnaIfAw=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=HtlGqH6iKLS332d4OwrID/Utvdk/6MFk9bCWFWw3UiAFIy2sS4X60c146SzCQ5BMY
	 GcPP4A1eGW9ddkuLTUVuwwf1X0GWx2+Nu+LhaU9sK8+V3ITAWJi9nwd20JMAGIaIEw
	 gieFD4YYnZXfoesifKCwz+IhLrVD3kM0IPppdPIIkjHb6ITLPFltOhGcRXFH/dGuJ0
	 1/KsjmBedo4IFYcKCN584jEU9wvugFilKOFZ0H/Z3yq4TuRFZLMz6dT8v6l+EUHRY+
	 RdKZfy5ZuXtYbFKslU2jF2T2jrJCCG4eYGY1cRMfDP9cYqMsMss+Di2DyV0b106V5/
	 FwxteDelv92Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB1CD343F;
	Tue, 12 May 2026 17:48:20 +0000 (UTC)
From: Ronald Claveau via B4 Relay <devnull+linux-kernel-dev.aliel.fr@kernel.org>
Subject: [PATCH 0/2] Khadas VIM4 PWM status LED support
Date: Tue, 12 May 2026 19:47:27 +0200
Message-Id: <20260512-add-kvim4-sysled-v1-0-7178719a43e7@aliel.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQrCMBCF4auUWTvQhKRoryJdxGTUQZNqJi2V0
 rsb2uX/4H0rCGUmgb5ZIdPMwmOqoU4N+KdLD0IOtUG3umut0uhCwNfM0aD85E0Bz94re7Ha2E5
 BvX0y3XnZyetwdKbvVOVyjHBzQujHGLn0TaKl4K4bbWDYtj9QbGYBkwAAAA==
X-Change-ID: 20260512-add-kvim4-sysled-8cc159524561
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1413;
 i=linux-kernel-dev@aliel.fr; h=from:subject:message-id;
 bh=GdO8sMea8p5bxncxQmac1W2vVytj8wlQkstRRnaIfAw=;
 b=owGbwMvMwCWm1SvKXP3cUInxtFoSQxZz+l2bwpmb9nEdfroq6MT7tJSbjdYdzIs/NZ3OnCU26
 17jLKGzHaUsDGJcDLJiiiz9cy1PvLt89MzXPeopMHNYmUCGMHBxCsBEggMYGc5/zeMyzspUTWFZ
 Gl72LNu1ZZZKoHS9Wu2KmImXrJZ6JDL84VtbeO3ww98eX1LWeBjbsdTxJPh/6XSTCuKV9X3h7/S
 bCQA=
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openpgp;
 fpr=DFD863F61375BF917F0012173953305EF1D0EC3E
X-Endpoint-Received: by B4 Relay for linux-kernel-dev@aliel.fr/default with
 auth_id=744
X-Original-From: Ronald Claveau <linux-kernel-dev@aliel.fr>
Reply-To: linux-kernel-dev@aliel.fr
X-Rspamd-Queue-Id: B075852666C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296387-lists,devicetree=lfdr.de,linux-kernel-dev.aliel.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[linux-kernel-dev@aliel.fr];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aliel.fr:email,aliel.fr:mid,aliel.fr:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

This series adds support for the PWM-driven status LED on the Khadas
VIM4 board (Amlogic T7).

The VIM4 exposes a heartbeat LED wired to the PWM_AO_C output, routed
through pin group pwm_ao_c_d. Before wiring it up in the board DTS,
the SoC pinmux definitions had to be corrected: the original
pwm_ao_c node was conflating two distinct pin groups (pwm_ao_c_d and
pwm_ao_c_e) into a single ambiguous entry.

Patch 1 fixes the pwm_ao_c pinmux entries in the T7 DTSI by splitting
them into two properly named nodes. Neither alternate is in use yet,
so there is no functional impact on existing boards.

Patch 2 enables the pwm_ao_cd controller on the VIM4 and adds a
pwm-leds node with a heartbeat trigger. The xtal-clk node is also
moved to restore alphabetical ordering among root node children.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
Ronald Claveau (2):
      arm64: dts: amlogic: t7: Fix pwm_ao_c pinmux definitions
      arm64: dts: amlogic: t7: khadas-vim4: add PWM-driven status LED

 .../dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts  | 30 +++++++++++++++++-----
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi        | 12 +++++++--
 2 files changed, 33 insertions(+), 9 deletions(-)
---
base-commit: 31f32e8cdf59291e467250dfc57d1a8c718f63d2
change-id: 20260512-add-kvim4-sysled-8cc159524561

Best regards,
-- 
Ronald Claveau <linux-kernel-dev@aliel.fr>




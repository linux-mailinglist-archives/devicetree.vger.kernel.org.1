Return-Path: <devicetree+bounces-118433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0D99BA3D2
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 04:47:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B5BE281EA6
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 03:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B1AF143C4C;
	Sun,  3 Nov 2024 03:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="JTQNWXAR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3553139D04
	for <devicetree@vger.kernel.org>; Sun,  3 Nov 2024 03:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730605609; cv=none; b=E3MXjyV1fbwf0y3JgOQz4sY7AP1VNUfkTA74JwBfOV+rK6dNvIfGkROE3uhi7FCt/z72xTJam4zNCAtW1aaNhIRdh6w7zMEt2J0DZd2aDVBtIV0mRE9h5tcdybmTNwSRTrJRViJcHvMRf3oBmQql6EpObIT43dgiXcxEKJoEcR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730605609; c=relaxed/simple;
	bh=/DV8HzPWj9MRXa5IjLFG3GwszeHV8alTweaJrPIHLIk=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Pdv5THDWknAUxe9So9Po2uUX1fQG/8ek8Vd9JbWVD4jxCMj5d9/0QddIRg6QPzdGNfGT/1OSuvTEQ9cET9jMDN7yX87azhOz9HRvsHGEwSypVCRYhfXS/hGpd/JRCEhicG4T+OSFeqL2S9/bq/jEtvJOWHK6dsLlCHxob8GNesA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=JTQNWXAR; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-6ea8a5e862eso5509317b3.0
        for <devicetree@vger.kernel.org>; Sat, 02 Nov 2024 20:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730605606; x=1731210406; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=TowRVRNLRnA95PP1YhuZFO986FuoFxFM7Ex1kZPLyXQ=;
        b=JTQNWXARHYTtS4uI3fKUElUZ6G2ypCpZWDN2QYUgV5bTgU5Ua2LaogxborBiGS1LDV
         a00t3iP197MRu+eKPflUEjhLyFusWaDfjqgtRsnjdSPs4jJlx60bvfxoDcXV9yRlKppJ
         wKKE/GnTWwGOE0/1QCWT8p4onChyLMEgxiEsiQOi6qRujPUyM6bbc2FgIUDZsR8GyRGo
         niDpB2nds7NrGZnduGVKzehWjn+Yg82rtvMYJ6XP6E76aFg2aOpVwIEeiShj8y8qhcyW
         7MD7DsmojB6+QRQC+tqhvXNwG2h0qe5QNT89v0Ujl0Lcqe2WRegwbzUjJt9VSkHosv7x
         iD8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730605606; x=1731210406;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TowRVRNLRnA95PP1YhuZFO986FuoFxFM7Ex1kZPLyXQ=;
        b=uIvwYQNU2OrypF75bhtK6Rib2S4X3GEvKeFRG6/oLC/zBKIZfuxxea6+6ZDIELUWzw
         XVTFJ1x9vpZGh+VHCusYPZGgIf7z2zZR0bhXrlYHknR3OV/MUEpuoTrMnUlq6uCb2NDX
         ZdCoIh59z4+4wspXstzyMCOw4F9SS8C0GLDoB2hJCMX9rvpGnxHcbMsNMFrRsvPbkLOm
         dvTLdE5NiKQccWVXK6F9DRFB6zf6iKfh2+gJ9VWxrSU2CFZpuWk4gqDEfuDNH6x0b4BN
         zys8Ewl9ktwtYpz9z/KOOCM2mn8kHmlZnDcBIniQgZcUSrWzka1QUXt/RNjXE5fyyeOq
         NeBA==
X-Forwarded-Encrypted: i=1; AJvYcCV+QOSkHg88Y0TnPvrTNTToz0FPoXP2g54sJZZYYM/NcPIohGqke76bWsE5dA2KT2ctprBbYfGdNlm5@vger.kernel.org
X-Gm-Message-State: AOJu0YyFqcwWiNWBr8ZDYr1wV3IZyVbppkb6DJLCGzCs3lwRNBmlkVJU
	B6vAtqFy6qplYpm2Q8EgEjROZLbtQIoeNOTlk1/h6bYNYajzpNEeDiBc9VCMvH+8Qj30UuOmyYx
	Eyg==
X-Google-Smtp-Source: AGHT+IHmE/kRn11bYNZn6cr3lE/xj6nOQF+TDhhrTDBqem535PO/7FKEx7RglgarpoJtTeWMpgmie/77OUc=
X-Received: from amitsd-gti.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:827])
 (user=amitsd job=sendgmr) by 2002:a05:690c:630c:b0:6ea:881b:b545 with SMTP id
 00721157ae682-6ea881bb908mr434707b3.4.1730605606556; Sat, 02 Nov 2024
 20:46:46 -0700 (PDT)
Date: Sat,  2 Nov 2024 20:43:30 -0700
In-Reply-To: <20241103034402.2460252-1-amitsd@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241103034402.2460252-1-amitsd@google.com>
X-Mailer: git-send-email 2.47.0.199.ga7371fff76-goog
Message-ID: <20241103034402.2460252-4-amitsd@google.com>
Subject: [PATCH v2 3/3] usb: typec: tcpm: Add support for sink-bc12-completion-time-ms
 DT property
From: Amit Sunil Dhamne <amitsd@google.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, heikki.krogerus@linux.intel.com
Cc: dmitry.baryshkov@linaro.org, kyletso@google.com, rdbabiera@google.com, 
	badhri@google.com, linux@roeck-us.net, xu.yang_2@nxp.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, Amit Sunil Dhamne <amitsd@google.com>
Content-Type: text/plain; charset="UTF-8"

Add support for parsing DT time property "sink-bc12-completion-time-ms".
This timer is used to relax the PD state machine during Sink attach to
allow completion of Battery Charging (BC1.2) charger type detection in
TCPC before PD negotiations. BC1.2 detection is a hardware mechanism to
detect charger port type that is run by some controllers (such as
"maxim,max33359") in parallel to Type-C connection state machines.
This is to ensure that BC1.2 completes before PD is enabled as running
BC1.2 in parallel with PD negotiation results in delays violating timer
constraints in PD spec.

This is an optional timer and will not add any delay unless explicitly
set.

Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
Reviewed-by: Badhri Jagan Sridharan <badhri@google.com>
---
 drivers/usb/typec/tcpm/tcpm.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index b3d5d1d48937..8b325b93b5a9 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -319,6 +319,7 @@ struct pd_timings {
 	u32 sink_wait_cap_time;
 	u32 ps_src_off_time;
 	u32 cc_debounce_time;
+	u32 snk_bc12_cmpletion_time;
 };
 
 struct tcpm_port {
@@ -4978,7 +4979,16 @@ static void run_state_machine(struct tcpm_port *port)
 		if (ret < 0)
 			tcpm_set_state(port, SNK_UNATTACHED, 0);
 		else
-			tcpm_set_state(port, SNK_STARTUP, 0);
+			/*
+			 * For Type C port controllers that use Battery Charging
+			 * Detection (based on BCv1.2 spec) to detect USB
+			 * charger type, add a delay of "snk_bc12_cmpletion_time"
+			 * before transitioning to SNK_STARTUP to allow BC1.2
+			 * detection to complete before PD is eventually enabled
+			 * in later states.
+			 */
+			tcpm_set_state(port, SNK_STARTUP,
+				       port->timings.snk_bc12_cmpletion_time);
 		break;
 	case SNK_STARTUP:
 		opmode =  tcpm_get_pwr_opmode(port->polarity ?
@@ -7090,6 +7100,10 @@ static void tcpm_fw_get_timings(struct tcpm_port *port, struct fwnode_handle *fw
 		port->timings.cc_debounce_time = val;
 	else
 		port->timings.cc_debounce_time = PD_T_CC_DEBOUNCE;
+
+	ret = fwnode_property_read_u32(fwnode, "sink-bc12-completion-time-ms", &val);
+	if (!ret)
+		port->timings.snk_bc12_cmpletion_time = val;
 }
 
 static int tcpm_fw_get_caps(struct tcpm_port *port, struct fwnode_handle *fwnode)
-- 
2.47.0.199.ga7371fff76-goog



Return-Path: <devicetree+bounces-117935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D02689B8772
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 01:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64511B21C32
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 00:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4610B156F44;
	Fri,  1 Nov 2024 00:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Yu24/i3q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F4A1C9DE5
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 00:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730419220; cv=none; b=Tn2t6Tj4o3Kcb3hNVsJndPktTToH9Y8O0bypV4vHKVuqPghzMV1FQ74mZnBsci/gslMsAkZJoGU/kVlFGNnA4QiTEPUaVJ5Dg8tLDrKa8EW6QLsFrfTopB8PI2JhvrCodXCmdm8iIyICrOkGuqmtNjNwNfVAOZefgIy6+4Hq0PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730419220; c=relaxed/simple;
	bh=GcFamxwRDGPO3itT2MjcU3zPO7i7GG6u7AIRa1Q7oFg=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=qaUS3ZkQ7XK3F/VaZsTyRxHX1gCq9V+Lk1W3rNPhz00J1JJ13osHpSN18vp3ixCwNduJ9SIv62voALy6YMx45l2bsgDVJDCyvOfltpDf4ByAia9MpjfhMJuxyaHlSwuAd2Xfar+sZZOpooS23EUGiIiaNCBUnqIA3EG8+YHZeto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Yu24/i3q; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--amitsd.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-6e7fb84f999so25033787b3.2
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 17:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730419212; x=1731024012; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=dQqXD8GGG81ZKLR68lhIbs8UaEvihWRfJOeJXcvzgOs=;
        b=Yu24/i3q5aG87jJNVFOLjAvr9E/GVFHnfn6/TF7u/pE76/AgiMniNJUL2i5ISehmsB
         Y0kHnmu/Z7eRdKr2/TkiHmwv9hoO/MWlaoKCZN1dj2EEe0Y81JXwl1aRyOiU1jfeUQjN
         k7+Ep9Gt3ru1e2C1BeAeMKRa1u93JwaKB2btQgNxTdFAvhDyrB9xv0kdjzEZzY1IM8tj
         Sd0Fs/q08Efin4rt6VZ6QftLp1xlRxnThdUaOVyH6b3y5RdyRL22h47HW8YzhNtwPBQz
         5IUS87z314a/4/LxJrgKQpXm6EJpQPPWs5t9w77I+spAKAzY7qxlg6ZMq5J8zIKowgsy
         /MdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730419212; x=1731024012;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dQqXD8GGG81ZKLR68lhIbs8UaEvihWRfJOeJXcvzgOs=;
        b=sx23b2XTUYmNiddp7PE9QG/gAYTb+HJdt02vYw3BdEmL1HfLUoo2+aZClfeD+tSz6m
         LDjSmPCWAl5dO0YDdy1lGqB4eamDxbc1V33BaYppmDw9XFeHl6TkaAAFv4cbe43NzxSl
         NsiiAZz8dFkFBN7vIudUAujZJ8ljfZoaEhDiyLOq+wfnYBM85myxKAYE6uBINXxh1tDi
         WcvN76RGGUjCXLmp10L2EmF8OluYqNU/IvaM80tszjSairGNMvtH6czXbBmd4Zg8V+rg
         Rwe7/FBnN3/s9NE/Z6RB49TVD2CIyyE7zWa6+yyres7iGoHkBUyqHx0pFwuTQWVhYtjL
         UjwA==
X-Forwarded-Encrypted: i=1; AJvYcCXsKv14eSF4LoTpITmXIPgsyCYA28Xo1u1EJLd77aCOynsOoG4XP5xtmXpWbzvpK3HG0ZljrWnIB6GV@vger.kernel.org
X-Gm-Message-State: AOJu0YxyOSIMUgfV/QJn3/JeW2nJQf6vIDugWx3km4tql4gEk4pt5rT9
	I8ejnniXbU8wmk2hVqUL19O1ytPfdgZTczpO++qk9MLkR8swnLT94drMQxiLPhbXKK7h/G8iwD6
	08Q==
X-Google-Smtp-Source: AGHT+IF3kA3CN/HGj+QhxHeBH2gUZC8UXb3P2uSWUlJKoBcrreHMjjN4zZ3Ex75VcC0umN5SfVTmaiZ0oxw=
X-Received: from amitsd-gti.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:827])
 (user=amitsd job=sendgmr) by 2002:a05:690c:2e8f:b0:6ea:fa4:a365 with SMTP id
 00721157ae682-6ea64c11f97mr45177b3.8.1730419212131; Thu, 31 Oct 2024 17:00:12
 -0700 (PDT)
Date: Thu, 31 Oct 2024 16:59:54 -0700
In-Reply-To: <20241031235957.1261244-1-amitsd@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20241031235957.1261244-1-amitsd@google.com>
X-Mailer: git-send-email 2.47.0.199.ga7371fff76-goog
Message-ID: <20241031235957.1261244-4-amitsd@google.com>
Subject: [PATCH v1 3/3] usb: typec: tcpm: Add support for sink-bc12-completion-time-ms
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
detect charger port type that is run by some conrollers (such as
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



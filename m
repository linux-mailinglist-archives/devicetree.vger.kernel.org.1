Return-Path: <devicetree+bounces-309564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oq53Dx4lKWrWRQMAu9opvQ
	(envelope-from <devicetree+bounces-309564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:49:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC70666766E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:49:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=Q6w9RDxF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309564-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309564-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC505317B50E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D3BE3CC31F;
	Wed, 10 Jun 2026 08:42:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D105A3CCFAE
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:42:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781080925; cv=none; b=eHaQjAqRAe+wqpPJhAQLAHqzvDLffhzNKuQsmoI229jCbNPmHN8CNcnarPBQ8L6N223VPYacG3W85VAnir3p3G09TcftBYTuhFMLP8hi13G7M9/XmHWy+7QiU4AtP5mrJ/YZ6FJIL5IxEtBoQ5xlttNrZt4pXg2p0nlALDiMp/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781080925; c=relaxed/simple;
	bh=Q230lnY0gVIEr7GJLHqky4UKLxDQyNEVo5h765AhfJs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YoDHZCmb/HHHnECbQx5tTKQ/Y4TAq+l/Schtsjl7CnHjsjmYu1MQHRdQ4v3J0U6YyGhxWR3xrExLXUgj/qMusYipD746d8HcCMVQpAJPKusk9NRVn0WjFn2txaT7Qv1m9E9BRoUemTZHM88F1UA7Vo5Z6g2DwdF/G5lPccacnM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Q6w9RDxF; arc=none smtp.client-ip=209.85.214.173
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2c0c2c7e0c5so43524835ad.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 01:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1781080923; x=1781685723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OS442Iy4WHxSdJHdZSOdZpr7Kbl6vNC1J8JNZ1Janxs=;
        b=Q6w9RDxFczGEkAJjDHzISYkh32EV/GVUcvrUUaV27U+mn2Ebvskd9lzBaHss0VRlki
         /KGqDphVexrsdYmJidEiBNSv7jVSAAKZjrf/wpqAMz3DQ9psFtweva8cXC6Gotll0nos
         t9lcp8TZjW/FDQ4nWz7kzRaCA/zRKkYHxlsDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781080923; x=1781685723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OS442Iy4WHxSdJHdZSOdZpr7Kbl6vNC1J8JNZ1Janxs=;
        b=hWb5251MFMAu0aAon+g4IN1ERkSy+d/D2wr73Ja7lqD9GMoXALGAsHM/Ku3J9DUjyN
         J6dwhesnrR5zk+pnU2kwioyWew0xrcLB0psI9Qf9srorHCz1zrc68DeLx97aq+N19wGG
         F4svgj1Xh8YpM5oSJOZFjtMK+/5pDjEItlTPBoGz7uc7i/ShyncnXRZBPOYnQgHjmi83
         1NEq+40i/eKG/AqEPPxGjCOnyare4x+/maa+UgVCYK/JF7UtS62g0bt6obdswpRs4+NZ
         W4qsneazoVz4YHEFfi6jOShW4+MiSVf4+k29jufuPQKZGBU//KgA/r3JSQVZNII/nbxL
         EXRQ==
X-Forwarded-Encrypted: i=1; AFNElJ+UPWTpmMWrnLxSTjaUm6uaXBG5aTs5Lj1dv/MIjt4BPRxdfvymBklZF0avK7f4pNHKu6Gjnyay25Hf@vger.kernel.org
X-Gm-Message-State: AOJu0YzNloUCbXHD4n9gv9QVfuFL7AIlIsggxTjXDbwsQOswf18aoQD9
	pQQIqde+H5flvdyw1LqwUsl2x4hOoxT19+bwSJdNSG7tYW4d8WF1C72vQpt9cmr3uw==
X-Gm-Gg: Acq92OE8OpIDJMcDeKaXCaWgLGOowTdSoAL3CgZ16Mh1FSFqjVD+cuoQXB5OsIbvWgm
	sgVGg+0Hz9vSrZmh1a2HvcOCpv9pFLxmpVP6VXpLxUfa25rRAzWCGUPj3i1Z+DHf/wW83oojtMb
	9EjigYoKkweULnVBWsPb/8miMgOqlVEMeEaDzpt1wsCMwJnDtzea426TBCdDc7HrmncyJUCOTlg
	rSoYMpRp9mtej7XtUwJbiNpOc8kpJ3gOtEIS9FRgarg3PCi0qj0b81Cj4pEti/Iq+UXyXkt7vEs
	Hq7BKdla8LqPOR5zHGLYS4k6yI5THEf98uc3dtLvlgLoGQLbAzMF4FCSshirDZ/w/YvyTCem+mZ
	6aS1+IZJAigT8bSYWbIZ1v8wC98VB+MLaCA3yqbmuS6VOnTs4m9o/qd7Iqif1yLLcQN9YzJRGcZ
	TRCrAW5Y45bGcsoH7xvQW1dMSAHQnjpVm0bsIZGNVjkhhrSu6/dUx0wbHAror80Jf890pvvwtD/
	WNlpPFvWnCCRVYsvg==
X-Received: by 2002:a17:902:cecc:b0:2c2:9254:4c22 with SMTP id d9443c01a7336-2c2a1c66cbcmr79859165ad.17.1781080923157;
        Wed, 10 Jun 2026 01:42:03 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:3870:6325:16c:d35c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f890b2sm239223725ad.26.2026.06.10.01.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 01:42:02 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Bartosz Golaszewski <brgl@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-acpi@vger.kernel.org,
	driver-core@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>
Subject: [PATCH v2 10/16] power: sequencing: pcie-m2: support matching on remote "port" node
Date: Wed, 10 Jun 2026 16:40:44 +0800
Message-ID: <20260610084053.2059858-11-wenst@chromium.org>
X-Mailer: git-send-email 2.54.0.1099.g489fc7bff1-goog
In-Reply-To: <20260610084053.2059858-1-wenst@chromium.org>
References: <20260610084053.2059858-1-wenst@chromium.org>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-309564-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:stern@rowland.harvard.edu,m:wenst@chromium.org,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:dkim,chromium.org:email,chromium.org:mid,chromium.org:from_mime,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DC70666766E

A USB hub can have multiple ports, and this driver needs to
differentiate which port is being matched to. The USB hub driver now
associates the "port" node with the usb_port device, so here we can
use the remote "port" node to check for a match. Then fall back to
the remote device node for the other connection types.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/power/sequencing/pwrseq-pcie-m2.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/power/sequencing/pwrseq-pcie-m2.c b/drivers/power/sequencing/pwrseq-pcie-m2.c
index e82821655fc4..49293376956b 100644
--- a/drivers/power/sequencing/pwrseq-pcie-m2.c
+++ b/drivers/power/sequencing/pwrseq-pcie-m2.c
@@ -176,8 +176,17 @@ static int pwrseq_pcie_m2_match(struct pwrseq_device *pwrseq,
 	 * parent matches the OF node of 'dev'.
 	 */
 	for_each_endpoint_of_node(ctx->of_node, endpoint) {
+		/* USB port devices are tied to the port nodes. */
+		struct device_node *remote_port __free(device_node) =
+				of_graph_get_remote_port(endpoint);
+
+		if (remote_port && remote_port == dev_of_node(dev))
+			return PWRSEQ_MATCH_OK;
+
+		/* Try the remote port parent for other types. */
 		struct device_node *remote __free(device_node) =
 				of_graph_get_remote_port_parent(endpoint);
+
 		if (remote && (remote == dev_of_node(dev)))
 			return PWRSEQ_MATCH_OK;
 	}
-- 
2.54.0.1099.g489fc7bff1-goog



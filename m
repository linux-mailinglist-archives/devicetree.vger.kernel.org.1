Return-Path: <devicetree+bounces-284205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPkcAcPzzmm2sAYAu9opvQ
	(envelope-from <devicetree+bounces-284205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 00:54:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 890FF38EE37
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 00:54:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 547A2303B2E0
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 22:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D6823D3CF9;
	Thu,  2 Apr 2026 22:54:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4311E3B9D8D;
	Thu,  2 Apr 2026 22:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775170492; cv=none; b=qimF0/q5MOruhAcVNChwAztsBG4uNZnKQ5NeymQizLTMhwknAAz1c16mUgwuA2Fa/dmzPNeX+sS3RJ/VYtYXzWtJcddY85cdk5OlHhgU2+lylNUMudl4c1VGj16A9+LceeAu/ghecrgjKAnkG3C3ULDCrzbyB0W68jOK3/Naci8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775170492; c=relaxed/simple;
	bh=jJZwKH1DTda9QewBiiZyZ8xSpdukrdIOYigr+ioGxuU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QL7ZiKaQgp540vNamYNV51XyDKV+gm7XDlRUH7K2iscOxy9wAlW/GCiF5BV3tGGaCCV6IFwqQLNXD2oncrPxn8ZZi3D3H7stJ0V8n4IRkpTZdbHzXL9stM0QOhRf56ILZ/IqQBrJdCssKPTm8gW0i2/uTo8ENYh+/RkRa35xxA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB059C19424;
	Thu,  2 Apr 2026 22:54:51 +0000 (UTC)
Received: by venus (Postfix, from userid 1000)
	id 2CF801812B5; Fri, 03 Apr 2026 00:54:50 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: sre@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, ulli.kroll@googlemail.com, linusw@kernel.org, 
 Khushal Chitturi <khushalchitturi@gmail.com>
Cc: daniel.baluta@nxp.com, simona.toaca@nxp.com, d-gole@ti.com, 
 m-chawdhry@ti.com, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260330110135.10316-1-khushalchitturi@gmail.com>
References: <20260330110135.10316-1-khushalchitturi@gmail.com>
Subject: Re: (subset) [PATCH v3 0/2] dt-bindings: power: reset: cortina:
 Convert to DT schema and rename node
Message-Id: <177517049015.464276.4179544371896712365.b4-ty@collabora.com>
Date: Fri, 03 Apr 2026 00:54:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-284205-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,googlemail.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.941];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:email,collabora.com:mid]
X-Rspamd-Queue-Id: 890FF38EE37
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 30 Mar 2026 16:31:33 +0530, Khushal Chitturi wrote:
> Convert the Cortina Systems Gemini Poweroff Controller bindings to
> DT schema and update corresponding dtsi file with new node name
> 

Applied, thanks!

[1/2] dt-bindings: power: reset: cortina,gemini-power-controller: convert to DT schema
      commit: 64a97c98f93e344be00d4ff10fef4119973938bd

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>



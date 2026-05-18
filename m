Return-Path: <devicetree+bounces-299491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEhRDkImC2pAEAUAu9opvQ
	(envelope-from <devicetree+bounces-299491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:46:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C118956F28B
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:46:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0E59D300A306
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7DD12147F9;
	Mon, 18 May 2026 14:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnG2N0Yu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54BC1C84D0
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 14:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779115521; cv=none; b=JPynxlHG3+sstqvLpuAEhOtwv66teWuZeerm+/Zmcef6IWffPHitbyy2DnmXL7Z2lTa1ILEdTVNlaNRSkM2ryvTounVeH90LJwZp57MBgncKMQHQ+QlPsyyVk2GhFDQa/AuwPTrOsPQtu7rDzfrShc3m5v/zQbbaQDPzq8RjvAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779115521; c=relaxed/simple;
	bh=ZVUEMI2uDQUenyULmWcZ1MeV/5rkqRdVKxM0X1pwA3I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=C9ZlcLnLB1vfYwT19l3JG5pximImtoVDPoLIv+xVUzAWA3ICjndJY2B/V9t5Pb+zivZglZ7Jr7kveZZODEKax1zF5l7HdloXTF+rubwgFcQJLoT9L2imj10C3oGsndqoyJRSnDhDU3IZoM4snscbUwAJBxVUQFbQWffsK7hfRT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnG2N0Yu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A681C2BCB7;
	Mon, 18 May 2026 14:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779115521;
	bh=ZVUEMI2uDQUenyULmWcZ1MeV/5rkqRdVKxM0X1pwA3I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=BnG2N0YuYTocQSBc/+25boh6zOqRHfMnHaGnVjoDaNrcVDF5CoiQ6qPFgsfnces/B
	 R/zG24ZPJc0qITNMEMKZ8Qna3q/+HFGvbbnl0lAxdZMpBs0swEc7KSII0nN++zn/4x
	 1015t/4wJUEQ/UttayteBomrQAAl9wbqx55b1oo/At4d8lRxDbzVsQ4Mq79zPbCI+9
	 SP2zcipJxjUUrlgbmPI5bpVYe027nued3HYq+kW+5WwleXHVb6QmBTgsRQpP3ip73Y
	 I7aIVmB/qRnM8g+64Mv4ReYdzW/W2diSvw454W9wOAWBPg5yTkVEfmZw762UFZ10hQ
	 36u+ptk0A2xIA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: usb: richtek,rt1711h: add missing
 'port' property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Akash Sukhavasi" <akash.sukhavasi@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260518142901.1747-3-akash.sukhavasi@gmail.com>
References: <20260518142901.1747-3-akash.sukhavasi@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 14:45:19 +0000
Message-Id: <20260518144521.0A681C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299491-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,4e:email,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: C118956F28B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `port` node in the device tree example is incorrectly nested in=
side the `connector` node instead of being at the top level of the `rt1711h=
@4e` node.
--

commit 18a1ecff9551deb9d653752f739ababa33eb01fd
Author: Akash Sukhavasi <akash.sukhavasi@gmail.com>

dt-bindings: usb: richtek,rt1711h: add missing 'port' property

This commit adds the missing top-level port property to the
richtek,rt1711h schema to describe the role-switch graph endpoint. It also
updates the example to include this new port configuration.

> diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml b=
/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
> --- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
> +++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
[ ... ]
> @@ -107,6 +114,12 @@ examples:
>                };
>              };
>            };
> +
> +          port {
> +            endpoint {
> +              remote-endpoint =3D <&usb_role_switch>;
> +            };
> +          };
>          };
>        };
>      };

Is this port node indented correctly in the example?

It looks like the 10-space indentation places it inside the connector node
rather than as a top-level property of the rt1711h@4e node as intended by
the schema update.

Should it be aligned with fewer spaces to be a sibling of the connector node
instead?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518142901.1747=
-1-akash.sukhavasi@gmail.com?part=3D2


Return-Path: <devicetree+bounces-278075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBU5HFflvGmV4AIAu9opvQ
	(envelope-from <devicetree+bounces-278075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:12:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 191922D62DC
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:12:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCBF2305DAB5
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 06:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E98C27FD44;
	Fri, 20 Mar 2026 06:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="FgbEaZbS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C29426A0DD
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 06:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773987153; cv=none; b=ibkLHr3tyxOfEG/xFrbe9qJP9t7ukdQbNesExtSbwUxYzpZN/652qMn7XG2S2VS3jdMrM+F5jbhuzYBk6i5MkG9slCakjaKOkdjvDUuCXETu0X6upzzK908y44ZtWoNYPZpzDUQuaV1pYTwJBiwlNYzeUsR7PIQA3vRPO9XM2p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773987153; c=relaxed/simple;
	bh=4hoa9J6xOBHrM0aN7Jc9XMxjRE3Ci9RIclJ6AJ0pnyk=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=CWiKGqFQaH2ve7Aw7es5YAs4NmqFkzW5g7JtSp4e2OWTgCXOWqWXSLjGgohAiWnhgAnJhYTY2QK4W4Aq7rcFJibnpMMzRV7zz1irPcCUXqOLU6/QZSRDjt7X37MYgVi5zLZAn440L3anzCif6JZpSWssiOGJLuz4XXouyjFD2JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=FgbEaZbS; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-c70fb6aa323so658829a12.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 23:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1773987150; x=1774591950; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i1iz6MeksNNtIcxd9ic1iSI1CofBBNW6rOw3XqGitRw=;
        b=FgbEaZbSCtAtCCltN/d54QqT/e+GkqN0SgWTavF0Uyn7wsSQPCK/M9p/ODhlGsRQuP
         v0Iy8islxmP8u9vd5w1+5zPwXpPdIli+tkzUzllCDVgkXF0Inb9gO5qnYAUhdLhILP63
         xgo4Qa7XijSB6PBXpnFlJXCqySbP+gp8390jq+9H3xYRh8son8Pcg0j3nDUSDOGlNqoR
         uiuyIFcGpbgN9y8/rVclrFm77t/HFVDkvAYlBoQgSg6iF9wGT855ruoCmrsJWNwkx3ai
         yRtVlqRHYTJQTAPawYA4KHliM1F1A3O9U9n+WmTcuQDjg6ueuSPF1CDbTPQLm6VmVX6M
         Rc9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773987150; x=1774591950;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i1iz6MeksNNtIcxd9ic1iSI1CofBBNW6rOw3XqGitRw=;
        b=hDfuhqs6gKSfOxAdRr6n5tZ6YGr0MO1BR3B6lsWzhyVGMgEJlE9a5EG4J30I1zzpPo
         5ytNhTJFYVSExAlLvuRrQdokD4vUgF1IXQx3P0fb13wAMCjyn85hOmoNl3mZK/u5b5lu
         VODLDKqvxKQjwFX5w8a6KIBqenHioVI6eONbtNdSH780+QjYbrDTseacu4sSxGL7iwrL
         djqZkc+pQk4WCNgbgrtB3aUqrV3+dJQg3XIsvwGJVH8p3lPuv6cfr+cXFO9QZewA1EPy
         EghTAUz4x0UObUPO1v8ioixh7QPfzYKEGiZXAFKLCqC74TyMo36mEbPmKBS8vtZMNZ6l
         Q2ng==
X-Forwarded-Encrypted: i=1; AJvYcCU893dENp7cj3hT749lMHQ5HrCmSZozMkKUkapY1ZaVfvDfOddaOtLETVhA/ARG4A1VkqGLQNSLsmsZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwQvjt5Z/ZCKNWaWrdxO+zG9X1t2PFjckQdwSPT6mO33dI98DC7
	/jfCVHsraFcaG0zJaTyy2ESt2f4xshTg4XsNqcWz+ppwZ3+72wu2UMev38Wx5AWuTgs=
X-Gm-Gg: ATEYQzwd5HXf+WKO2Swb3tjqo1ODnShMu0LjEO4pflKj+snT5HBTgIzWoHtKT9FZMir
	GtfyUZ8x4rDs9AcqhpOk3JbvzbXicHjp4W5gk0Nk1NWabw7iKNxPnjNUW/VAg7ylV9eL6isJ9YI
	GAO2Dc1SNCNEdpr8yl8Y/XECTTbu08kLM9Ly9W0yYP6A7S9RCHil+vXCftTBgjZfa9itg+G0LME
	mU6SoNazezZKYivHE2E/4UpXuwDjmbhjzXmXFdhmfQhalitFyJpnqFMAMofiOoTHAca14Z/i3NB
	zIA8QZWFVmFKRv7/xOUZabKQRFs7F6bghcJt39S5M4zC8ES1re2c3iHGQ8H+hdupqLOph6HaOrX
	HcbhucU0LIfl1ekm+II+qvrTpWr1Ii7R307OVdi1jwxVn3o2WFU8XO7fr0C1dt+Rzo5zgjggACx
	/71qqUxLpqcKN+NB6EeovH7q/CHuvetwEKWYEdLFJkfGqOO0c=
X-Received: by 2002:a05:6a20:7f9f:b0:398:b178:a53f with SMTP id adf61e73a8af0-39bceb427b1mr1734963637.40.1773987150278;
        Thu, 19 Mar 2026 23:12:30 -0700 (PDT)
Received: from smtpclient.apple ([50.47.115.214])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b0409f409sm968942b3a.31.2026.03.19.23.12.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2026 23:12:29 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.21\))
Subject: Re: [PATCH v12 0/7] i2c: xiic: use generic device property accessors
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
In-Reply-To: <20260223-i2c-xiic-v12-0-b6c9ce4e4f3c@nexthop.ai>
Date: Thu, 19 Mar 2026 23:12:19 -0700
Cc: Michal Simek <michal.simek@amd.com>,
 Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>,
 Jonathan Cameron <jonathan.cameron@huawei.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <FC244FF4-29CA-4A3A-8E58-C6CDB05A248D@nexthop.ai>
References: <20260223-i2c-xiic-v12-0-b6c9ce4e4f3c@nexthop.ai>
To: abdurrahman@nexthop.ai
X-Mailer: Apple Mail (2.3864.400.21)
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278075-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[nexthop.ai];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	APPLE_MAILER_COMMON(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 191922D62DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Andi,

I'm just following up on this patch series (v12) aimed at updating the =
xiic
driver to use generic device property accessors.

I addressed the feedback from Krzysztof and Andy in this version. Do you
have any updates or further comments on this series? I am happy to make
any necessary changes.

Thank you,
Abdurrahman

Link to patchwork: =
https://patchwork.ozlabs.org/project/linux-i2c/list/?series=3D493003

> On Feb 23, 2026, at 7:59=E2=80=AFAM, Abdurrahman Hussain via B4 Relay =
<devnull+abdurrahman.nexthop.ai@kernel.org> wrote:
>=20
> - Switch to generic device property accessors.
> - Switch to managed devm_ functions to simplify error handling.
> - General cleanups.
> - Skip clock setup on non-OF systems where clock is not specified via
> firmware.
>=20
> Signed-off-by: Abdurrahman Hussain <abdurrahman@nexthop.ai>
> ---
> Changes in v12:
> - Reworded the patch 3 description as suggested by Krzysztof.
> - Added fwnode to patch 3 as suggested by Andy.
> - Used fwnode added in patch 3 in patch 7 as suggested by Andy.
> - Link to v11: =
https://lore.kernel.org/r/20260213-i2c-xiic-v11-0-5d18aea11bde@nexthop.ai
>=20
> Changes in v11:
> - Cosmetic change to return 0 in patch 1.
> - Remove pm_runtime_dont_use_autosuspend() in patch 1.
> - Link to v10: =
https://lore.kernel.org/r/20260204-i2c-xiic-v10-0-c2b996425235@nexthop.ai
>=20
> Changes in v10:
> - Moved dev_dbg() change from patch 4 to patch 5.
> - Reworded description in patch 6.
> - Addressed Andy's comment in patch 7 (&pdev->dev -> dev).
> - Link to v9: =
https://lore.kernel.org/r/20260202-i2c-xiic-v9-0-ce4695f5267d@nexthop.ai
>=20
> Changes in v9:
> - Fix an issue found by the test robot in the cleanup patch.
> - Reworded the clock change description.
> - Add a patch to switch to i2c_add_numbered_adapter().
> - Link to v8: =
https://lore.kernel.org/r/20260201-i2c-xiic-v8-0-deb2dd158d1a@nexthop.ai
>=20
> Changes in v8:
> - Made the clock change the last patch in the series.
> - Reworded the clock change description.
> - Changed dev->fwnode to dev_fwnode(dev).
> - Link to v7: =
https://lore.kernel.org/r/20260129-i2c-xiic-v7-0-727e434897ef@nexthop.ai
>=20
> Changes in v7:
> - Drop the dt-bindings patch.
> - Skip clock setup on non-OF systems.
> - Minor commit body rewording.
> - Applied code-review trailers with `b4 trailers -u`
> - Link to v6: =
https://lore.kernel.org/r/20260127-i2c-xiic-v6-0-e82e2f6f657c@nexthop.ai
>=20
> Changes in v6:
> - Cosmetic changes to address the comments.
> - Added a patch to use resource format specifier in debug log.
> - Link to v5: =
https://lore.kernel.org/r/20260126-i2c-xiic-v5-0-88a16a28721c@nexthop.ai
>=20
> Changes in v5:
> - Reorder the cosmetic patch to be the last in the series.
> - Added a documentation patch to describe the optional clock.
> - Minor commit body rewording.
> - Link to v4: =
https://lore.kernel.org/r/20260123-i2c-xiic-v4-0-4a3eba3510ce@nexthop.ai
>=20
> Changes in v4:
> - Reorder the cosmetic patch to be the first in the series.
> - Amend the mutex_init patch to also switch to the managed pm_runtime_
>  variant.
> - Link to v3: =
https://lore.kernel.org/r/20260123-i2c-xiic-v3-0-eb7cd4254dfb@nexthop.ai
>=20
> Changes in v3:
> - Reorder the "optional clock" patch to be the first in the series.=20
> - Add a patch to switch to devm_mutex_init().
> - Remove dup message in error path.
> - Cosmetic: use temporary dev variable.
> - Link to v2: =
https://lore.kernel.org/r/20260122-i2c-xiic-v2-0-134f5d743e8b@nexthop.ai
>=20
> Changes in v2:
> - Split the patch into two independent changes.
> - Added struct device *dev at the top of probe() and remove() to =
re-use.
> - Switched to device_set_node(...)
>=20
> ---
> Abdurrahman Hussain (7):
>      i2c: xiic: switch to devres managed APIs
>      i2c: xiic: remove duplicate error message
>      i2c: xiic: switch to generic device property accessors
>      i2c: xiic: cosmetic cleanup
>      i2c: xiic: cosmetic: use resource format specifier in debug log
>      i2c: xiic: use numbered adapter registration
>      i2c: xiic: skip input clock setup on non-OF systems
>=20
> drivers/i2c/busses/i2c-xiic.c | 97 =
+++++++++++++++++++------------------------
> 1 file changed, 42 insertions(+), 55 deletions(-)
> ---
> base-commit: 37a93dd5c49b5fda807fd204edf2547c3493319c
> change-id: 20260122-i2c-xiic-3ba89ff5ea93
>=20
> Best regards,
> --=20
> Abdurrahman Hussain <abdurrahman@nexthop.ai>
>=20
>=20



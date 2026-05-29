Return-Path: <devicetree+bounces-304065-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHMxNLIiGWqVqwgAu9opvQ
	(envelope-from <devicetree+bounces-304065-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 07:22:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C203D5FD4B1
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 07:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 37570300BCAF
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 05:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26ECA39EF16;
	Fri, 29 May 2026 05:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jyghHByE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD16B367F5F
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 05:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780032172; cv=none; b=Q15PL44KB4CSK9x2SJZdOLV2NJ387znRc6CViHTtqqvdP9Vouc69tjiWmRD5nmR+ZxiP7OefGDy0lkH66BLggU5a6bqDrm4P4XMKpjzJd40nUTzrgyq8VrhRTg4FoxiBJfTwSxGPV3ivTfhUBlCInYAGMZf/QSvvfZ0t19e//x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780032172; c=relaxed/simple;
	bh=t35ZUNiEDakMUaxb2X4R5ElEy4bw5Iaw7KfRycdfqmk=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=BrswThuV5LuKPdo4iG1omA+nyWQubWK8GsNbiWyjdIYCRUG+L/k1Lz+O8ldEEilS02O13BJMabwOIkoHAuY2+fEC1ok1dxA5rhlCEKPWssuMP95FzD6T9gdVWQuGNCB85fVxQvORHt8iOfOnqwn9oOBJ+IHUwpiETn9xaRvJRdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jyghHByE; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-485621336easo2843016b6e.2
        for <devicetree@vger.kernel.org>; Thu, 28 May 2026 22:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780032170; x=1780636970; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=iHT2noYv7W5ah2RMFS3yrLrY/e4u1cg018AnRp4jxmk=;
        b=jyghHByE2YxXov3fQOUfoANANQZnzSS1aPbBvLmyK86BSXiRfl3vIBp5FKYSPn8XDK
         Dbn8xhx/4wQ+996Gf7Tuvz+J104+pmeVVjNEANdvn6X0ktYo74yJGDRSTiYiZrB6Jg7v
         TGvyYWEPlNWWxTkbbgHta432BLHoXUee0+lwiZjATm4LCwLjNeUoP7SfSRhBdOumTGhN
         CMSE4Xz6QKFsq2zwl55+dJlLkAdXt7iPBUf/fslOj/TuYOOl4sFMfZZ/vCkCx3J2RHa4
         G5hs9cHIXkMIMBM0FFfXHKsvckQHjKzlGzyFYelajtDUEFy5qcTa9JPuHzYQJL6gDWFR
         MGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780032170; x=1780636970;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iHT2noYv7W5ah2RMFS3yrLrY/e4u1cg018AnRp4jxmk=;
        b=mHy0f/xhi4rw/O1GrsUfZ+8rhhIX9A7D4Ukec5kQ5S/C3BQyZpMP3LG/jwOvbhIt88
         QYc5qlXnr/uTWYhhdbtjHSc7DPir/lsoUBpfx+exUpyJlLJCPAf0eG11j29+BgNSPRG7
         JWGvIGZqsV1VUlh0MJtRVimv4LKuYyQCgVw5qaXBWwCm/BeEg3L7fx/25JEfJkaEfeVt
         oecioE64WRTZBOBfIa0a1h4k2AOLYzAAgV0ugUclFMqOfUJKMCQQzlbNJIT16DFhrUrH
         uqhbHbk+AaM3ariWj+R7dxxeKrJt02HxI/rX67obFUnt+BxuGhET8NtkWTMg0/CZ+S0I
         x1Ow==
X-Gm-Message-State: AOJu0YxQf8qNYOfbBvoSUZ8VMcLKaNOL8Z4UElA3PiXNJRgUqWowDZOK
	rEwgd1SHAqTCUd0zolsfldKqXQ168eoTHP2dqGyKXjph5rbgTwGCGPzLC8syKA==
X-Gm-Gg: Acq92OH5x6K5cDKr5EoJT1IPRXPe5ZxqmNVoq1JSRQSLxH8XK6PoyUz5iabZ/TCqy+I
	6jerr0aATrkmgnva950Mc6s2fYWoys3zw3pIZUVw+Mv4DU7VBjZDYrDLwL5qsRP5XEtHcfG5+hB
	/4qpcmXeVB23eDcWWWNpn6K23D39OWFAMLBBXZFS19K5iyMFNSbIWiiI79qy0PtYcIgx8e/g6mZ
	MjBAnxfsTmMohlvyiCGNyGKWjkyxz80FvsMLi2gbwuw/sBtc2aQ0DB09SIFvcuhfwBxW3j27Bum
	sZivVdNcRnesc63cYy/Faaxo/3y7786Q0jJ5p/8loGqpkL7U2A2GHWRBkW2ql/PZPMWDJCjNtol
	5e4TCFqa8MM4NG8bcvqix4ttBwkNbb0FuNHxRxVyzO+IJ9aAh046NlwRI7Sz9oJu9nar9E9BO6v
	fYmPvKGt8sl3QQsRe1AjUxKJnXjMIj5qv3/u7cLfF1AJm/0kqzAET+
X-Received: by 2002:a05:6808:1784:b0:467:2509:c207 with SMTP id 5614622812f47-485e6b4410cmr963686b6e.17.1780032169775;
        Thu, 28 May 2026 22:22:49 -0700 (PDT)
Received: from fsh.attlocal.net ([2600:1702:56e9:4b40:e3a9:78c5:641e:a58c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e695bd790fsm760909a34.10.2026.05.28.22.22.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 22:22:48 -0700 (PDT)
From: Akash Sukhavasi <akash.sukhavasi@gmail.com>
To: devicetree@vger.kernel.org
Subject: [PATCH 0/4] dt-bindings: remove redundant .txt redirect stubs
Date: Fri, 29 May 2026 00:22:37 -0500
Message-ID: <20260529052246.4934-1-akash.sukhavasi@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-304065-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akashsukhavasi@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: C203D5FD4B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Several .txt files under Documentation/devicetree/bindings/ contain
only a redirect notice pointing to a .yaml schema with the same base
filename in the same directory. These stubs were useful during the
.txt to .yaml transition but are now redundant, since the .yaml is
discoverable by name. Meanwhile, other documentation still references
some of these stubs, forcing readers through an unnecessary extra hop
to reach the actual schema.

This series removes four such stubs and updates all remaining
cross-references to point directly to the .yaml schemas.

Other redirect stubs in the tree were evaluated and intentionally
kept:

 - Stubs pointing to .yaml files with different names (e.g.,
   spi-bus.txt -> spi-controller.yaml) serve as breadcrumbs for
   the renamed schema.

 - Stubs pointing to multiple .yaml files (e.g., nvmem.txt ->
   nvmem.yaml and nvmem-consumer.yaml) convey that the content
   was split.

 - Stubs pointing to .yaml files in a different directory (e.g.,
   reset/st,stm32-rcc.txt -> clock/st,stm32-rcc.yaml) serve as
   cross-directory pointers.

Two additional same-name, same-directory stubs (leds/common.txt,
regulator/regulator.txt) have significantly more cross references
and will be addressed in a follow-up series.

Patch 1 supersedes my earlier standalone submission:
https://lore.kernel.org/all/20260523004223.3045-1-akash.sukhavasi@gmail.com/

Akash Sukhavasi (4):
  dt-bindings: net: remove obsolete mdio.txt
  dt-bindings: media: remove obsolete rc.txt
  dt-bindings: net: dsa: remove obsolete dsa.txt
  dt-bindings: input: remove obsolete matrix-keymap.txt

 Documentation/devicetree/bindings/input/brcm,bcm-keypad.txt | 2 +-
 Documentation/devicetree/bindings/input/clps711x-keypad.txt | 2 +-
 Documentation/devicetree/bindings/input/matrix-keymap.txt   | 1 -
 .../devicetree/bindings/input/nvidia,tegra20-kbc.txt        | 2 +-
 Documentation/devicetree/bindings/input/pxa27x-keypad.txt   | 2 +-
 Documentation/devicetree/bindings/input/st-keyscan.txt      | 2 +-
 Documentation/devicetree/bindings/media/hix5hd2-ir.txt      | 2 +-
 Documentation/devicetree/bindings/media/rc.txt              | 1 -
 Documentation/devicetree/bindings/mfd/tc3589x.txt           | 6 +++---
 Documentation/devicetree/bindings/net/dsa/dsa.txt           | 4 ----
 Documentation/devicetree/bindings/net/dsa/lan9303.txt       | 2 +-
 Documentation/devicetree/bindings/net/mdio.txt              | 1 -
 Documentation/networking/dsa/dsa.rst                        | 2 +-
 13 files changed, 11 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/matrix-keymap.txt
 delete mode 100644 Documentation/devicetree/bindings/media/rc.txt
 delete mode 100644 Documentation/devicetree/bindings/net/dsa/dsa.txt
 delete mode 100644 Documentation/devicetree/bindings/net/mdio.txt

-- 
2.54.0



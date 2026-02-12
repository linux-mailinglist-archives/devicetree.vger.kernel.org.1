Return-Path: <devicetree+bounces-264881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPWZJlYvjWk/zwAAu9opvQ
	(envelope-from <devicetree+bounces-264881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:39:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EB2129063
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:39:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 286C7300F175
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 01:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED0A221323C;
	Thu, 12 Feb 2026 01:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMh8lz+f"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1A72101AE;
	Thu, 12 Feb 2026 01:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770860354; cv=none; b=LdI2qATAi7g0WQiNOMIKkjC11CywEbGMHVVYO96d/W4h+1tcrGSe+bUP+B6TnlAy/x9iDkv7yaFJ5W+QPNBfG2WtSJ2W4SUNWrxz+x9UbzHe0m2g01mGhWR5ctZiNgBoOhHcJ2e/24xsPhz+5Fcvvm4Iw4/NMBpvzQy6RXGe1l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770860354; c=relaxed/simple;
	bh=2fG2J3eWsyvskz/JyfyVtoo2zW/1/dvAbxTesMxxSlw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ufX4Kq0Yr4zjRm/QsLFbPU+/z6HnTbEn1M1pV0Kxcyn+11lm5yL+t75tfv+BT/cT57y3j/K+aUw7+n0dUUff4sfskoHAnf4uv9IpSxpIWAoC5bt4QcdLhozdN6HJtnFOZ2LI5KUNba6XYRi1kE3SX5cTPf2fNT6KOMLydnnf7GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMh8lz+f; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D9E9C19423;
	Thu, 12 Feb 2026 01:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770860354;
	bh=2fG2J3eWsyvskz/JyfyVtoo2zW/1/dvAbxTesMxxSlw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pMh8lz+faYQZze8QKO7XPA9Aco0gQGbW+/qfsCQiPfjfZ5naxBl8iSjo1NO60G8SL
	 tUHIg+AtMLucE8sjJuoVLz47rROFXVFOjgzw5ULaFuPYO2wCKZtv7psvgXd/Cg2BQH
	 vw8vWStevdVsPGvJxF1aWiGIpAxdljOVickaZtMVQmL+TBJYzSEugJ83BQLzqLCmSn
	 rCc+8JVkjYFSFHUEwhPX0o4n/tMmyQ3mNMuUysFCDEcqTKKaDfe65Wy62ywlr1LFqX
	 6Nc9OoL+RlwpaKPRL9b6a2C23g2KzwMfENjgPhcu+hf5i31eRl1QH4sZUAYzkSynYR
	 KJcvZmWGqMKLg==
From: Yixun Lan <dlan@kernel.org>
Date: Thu, 12 Feb 2026 09:38:54 +0800
Subject: [PATCH 1/3] dt-bindings: phy: spacemit: k3: add USB2 PHY support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-11-k3-usb2-phy-v1-1-43578592405d@kernel.org>
References: <20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org>
In-Reply-To: <20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Ze Huang <huang.ze@linux.dev>
Cc: Junzhong Pan <panjunzhong@linux.spacemit.com>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1134; i=dlan@kernel.org;
 h=from:subject:message-id; bh=2fG2J3eWsyvskz/JyfyVtoo2zW/1/dvAbxTesMxxSlw=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBpjS800dAle+HhsO2L7sGXmR9XF/MO4OA5MrLSX
 yAHfAxfrWqJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCaY0vNBsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+0oJg/+KYza1iIK+9Z4TL0pqqwAMsZFW/P2qdfpaSTf+1relauokxvbhwp8L
 UPzTKTjJNkYlNtoZe+ic8B1JTAW7JBqAhYX5WlD60MRXluyhVV/aA9Gw6vvPUIdJ15SXsAm2B00
 Mpd64a97StuWSCdiMBE0p815WHsmeH4NAef2zXtIJH65WCzrMxhMO2V2opqbn92yWE7bZ4ccMLP
 rzUpCc5+FewOaX/dEWAoTWs+Hgv/ntFNOcEW+I6txaed7G9BQOpeY+GLEHCwn95FAMhTtmh40tP
 UUzLyWM2QMdt1Wf603J13lveobEeEmJkrbBjuNQe2mOwPfev2QIcVWpIditWbwjCSjW8C4SV+NF
 cRYOVaAaQbzf9hO11amyDMmCh/6Ftp8yjh9CmCmto2RRF+WYV5k8AIrn905qIwmwAUNRzl4t0YF
 44cP5+8w/1ScvbwJr+NPTFbLdQIDgOO1OgSEkHqstkAGSeCaBjShs/domLLCdG0pZ4m4ZGfUTVs
 OfGNG3yFhD876g+cIi2RkmGmORPOFGHqICbSajCcY+XtHwrFBFvATmJh8tBZiyM+gnGiEcAaiQS
 A6OFMxLn+1CRbSogFPUkW6gB3wkM4WDTIJ3HFrhJ3S73inTH8GSXccjuuIJCRiZfT91QnaWBr4l
 Pd/lhC+NNRffDI3bqqXorvBPqpYczw=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264881-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D5EB2129063
X-Rspamd-Action: no action

Introduce a compatible string for the USB2 PHY in SpacemiT K3 SoC. The IP
of USB2 PHY mostly shares the same functionalities with K1 SoC, while has
some register layout changes.

Signed-off-by: Yixun Lan <dlan@kernel.org>
---
 Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
index 43eaca90d88c..18025e5f60d6 100644
--- a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
@@ -4,14 +4,16 @@
 $id: http://devicetree.org/schemas/phy/spacemit,usb2-phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: SpacemiT K1 SoC USB 2.0 PHY
+title: SpacemiT K1/K3 SoC USB 2.0 PHY
 
 maintainers:
   - Ze Huang <huang.ze@linux.dev>
 
 properties:
   compatible:
-    const: spacemit,k1-usb2-phy
+    enum:
+      - spacemit,k1-usb2-phy
+      - spacemit,k3-usb2-phy
 
   reg:
     maxItems: 1

-- 
2.52.0



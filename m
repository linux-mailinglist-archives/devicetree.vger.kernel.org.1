Return-Path: <devicetree+bounces-298216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDgkD2UHB2qNqwIAu9opvQ
	(envelope-from <devicetree+bounces-298216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:45:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0B454EB1E
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:45:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F30C301F1B6
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E2CC43636A;
	Fri, 15 May 2026 11:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdE6kJks"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BBC83C9890
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 11:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778843907; cv=none; b=GlkSrRqgGasfHaxBsRwnlIIv9XTgQirhcasQ1ES4FPiRFZgSmb5RqI0XDr17vXpakY1SA6PI+9bJbISGiXt0epqJmtNjdaCcA3iniGcJHsWxNxk4XewUsPy6188JiumZoYtl8hxHL6vdhKOC2uWHKE45MAFc51TLZpSrC9PyAiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778843907; c=relaxed/simple;
	bh=Qvq+yZ6oQmdKTw/RDlarw/2JemWDqSh4Pgg/OrCDjgU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Pm7pCFk9iSrHKfjzbgKG8wIi6zFXhyQaDs4L1QVY7tY2cdJQ1YJfojPmKvTm3K+W5NWZrMdpKoJ59hhs95I4yh9k1k3KRpJRMFDAzFcOVkHnBxAu7Ge75vELcQ3jXFLxCYzpEZHDdjltKfy/Ka3cM8K8yDi8EpxThvpFNIrgWNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdE6kJks; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1623C2BCB0;
	Fri, 15 May 2026 11:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778843907;
	bh=Qvq+yZ6oQmdKTw/RDlarw/2JemWDqSh4Pgg/OrCDjgU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=rdE6kJks7nCUNQR3B15jYFjANEDQlb0gzDtuR9trXBSSZ6syrdBZYQbqjB+dVPUby
	 DsypAIYFqHrBCNfWfipvPVD46htEsEJ1idvA4XiJCD77TXSdKttvnIBB+hhGf3Huh2
	 Xb12yiyykDQdRfjgz4uhyNcmPoKYKIPB1MteTKDCKZBiO2r/nJsCGEGZz7CDxEPpIL
	 Q7T7JncJgPSOw/BM8JA7AC/G1r4c0Mq6Zy2OdbReMJhT8LXbbaTNXhN0mFUSTPH+ht
	 Fsjg8IHs6ZSJE5lqYroHAgfz7YzI/s7YbVnU98aKp/uRLx/lyjAaoxWB71JO3l62Ki
	 RA9ffziDNgqjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: usb: qcom,dwc3: Add ipq5210 to USB
 DWC3 bindings
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260515-usb2phy-v1-3-5f8338d466bf@oss.qualcomm.com>
References: <20260515-usb2phy-v1-3-5f8338d466bf@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 11:18:26 +0000
Message-Id: <20260515111826.F1623C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 9B0B454EB1E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298216-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,qualcomm.com:email,sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The new compatible string `qcom,ipq5210-dwc3` is added to the to=
p-level `compatible` list but is omitted from the `allOf` conditional block=
s that enforce device-specific constraints.
--

commit f7f00d62e8a27abcab7835184425ce9a31f1b2c3
Author: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

dt-bindings: usb: qcom,dwc3: Add ipq5210 to USB DWC3 bindings
   =20
Update dt-bindings to add ipq5210 to USB DWC3 controller list.

> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Docum=
entation/devicetree/bindings/usb/qcom,dwc3.yaml
> index a7f58114c02e8..f8e0819be894b 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -26,6 +26,7 @@ properties:
>        - enum:
>            - qcom,ipq4019-dwc3
>            - qcom,ipq5018-dwc3
> +          - qcom,ipq5210-dwc3

Should this new compatible string also be added to the allOf conditional bl=
ocks
that enforce constraints for related hardware?

Similar generations like ipq5018 and ipq5332 enforce clock and interrupt
limits further down in the file:

allOf:
  - if:
      properties:
        compatible:
          contains:
            enum:
              - qcom,ipq5018-dwc3
              - qcom,ipq5332-dwc3
    then:
      properties:
        interrupts:
          maxItems: 3

Does ipq5210 share these constraints, and should it be added to the appropr=
iate
conditionals?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-usb2phy-v1=
-0-5f8338d466bf@oss.qualcomm.com?part=3D3


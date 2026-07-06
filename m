Return-Path: <devicetree+bounces-320953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 29w1OuOQS2qHVgEAu9opvQ
	(envelope-from <devicetree+bounces-320953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 13:26:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4685370FD29
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 13:26:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BJ9jnTHa;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320953-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320953-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4795329E1A8
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 09:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F86F42A17C;
	Mon,  6 Jul 2026 09:08:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5A8424666
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 09:08:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783328930; cv=none; b=iH4UnUB6iGMaHboy1dqKOqe382RbT3oM4dT09eACLXAvO4/Qnr/lTdjyN+4UC9A8Ei4rBz7D/KtIBjEbRjFzbwpl2OURDKXdhujedqNinlopbxDUYP3FLXd03cYhdhqgNuz1zcXSpxBvXiUhQeVAY9qJ7oUHoFU1BHD9cygxna4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783328930; c=relaxed/simple;
	bh=hu0Exf9BrEmXhvPHNUOLv8+Uh00Ni2yYG5If58HV6Xs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GJeW2xGHBFdlFnZc7BZ382oQ9McWD+2cHvBTb2ROAk6CzukaqNoowoy/Uko+eXXHZiSEfy68Mp6yjDhG8C+c54b53uHNcjwsVEt6ZamVMHAYwYRp+HFpzx5Hz6LL/wa7B6JofPMqDW6yojb0o37LHBj7lWdV1LSvwHR9uCORGMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ9jnTHa; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E38221F000E9;
	Mon,  6 Jul 2026 09:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783328916;
	bh=IFyEh/U4hvq0sTdwBPtScJt/EDgQEQDzmUnE5jielKI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BJ9jnTHap7zs1cLGKeHtuQBqx75x64Oq5DZEtxjM5KVjsVaBUCFVJJ1QEBMuTQnZ8
	 LQaeYd6v6F7wAX5O3P1yDR1pN6l23PWAWrLg8tXQ3p/5jjQYjY8zNJV85K16Yo3jGQ
	 s61TbRNRMQOxo63R6wWC+tcwCkue4SBwu5gNXE/JlFkUbRsj9swsNBY/V/AwBvaXLM
	 24zj5vba+4ucF0vJJRG1ZlI0vF+tKfZl/ctZYRrbgrbBfstt1QwvLIrh/BXxJFZklZ
	 5nNn4Qrq0rF+dUrPhlCzydFb9mmA8hTeDxIOGwdVs8sjPyV5qD373kJdOWy3Rl2LHI
	 Svr/eig8QqevQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: clock: qcom: Add video clock
 controller on Nord SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Taniya Das" <taniya.das@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260706-nord_videocc_camcc-v1-1-bae3be9e9770@oss.qualcomm.com>
References: <20260706-nord_videocc_camcc-v1-0-bae3be9e9770@oss.qualcomm.com>
 <20260706-nord_videocc_camcc-v1-1-bae3be9e9770@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 09:08:35 +0000
Message-Id: <20260706090835.E38221F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320953-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:taniya.das@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,qualcomm.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4685370FD29

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The new compatible string `qcom,nord-videocc` is added to the to=
p-level `compatible` enum but is omitted from the `if-then` conditional blo=
ck that enforces the `required-opps` property.
--

commit 3e90aae8332184ade41937f239c5a380bf14e445
Author: Taniya Das <taniya.das@oss.qualcomm.com>

dt-bindings: clock: qcom: Add video clock controller on Nord SoC
   =20
Add compatible string for Nord video clock controller and the bindings
for Nord Qualcomm SoC.

> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.=
yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> index 5d77029bfaf88..9b9878e9b9cfc 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
[ ... ]
> @@ -27,6 +28,7 @@ properties:
>      enum:
>        - qcom,glymur-videocc
>        - qcom,kaanapali-videocc
> +      - qcom,nord-videocc
>        - qcom,sm8450-videocc
>        - qcom,sm8475-videocc
>        - qcom,sm8550-videocc

[Severity: Medium]
Does qcom,nord-videocc also require the required-opps property like the oth=
er
compatible strings in this binding?

If so, is it a regression that this new compatible string was omitted from
the allOf conditional block that enforces it?

For instance, the existing conditional block enforces required-opps for the
other devices:

allOf:
  - $ref: qcom,gcc.yaml#
  - if:
      properties:
        compatible:
          contains:
            enum:
              - qcom,glymur-videocc
              - qcom,kaanapali-videocc
              - qcom,sm8450-videocc
              - qcom,sm8550-videocc
              - qcom,sm8750-videocc
              - qcom,x1p42100-videocc
    then:
      required:
        - required-opps

Without updating this block, does this allow device trees missing
required-opps for qcom,nord-videocc to pass schema validation?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-nord_video=
cc_camcc-v1-0-bae3be9e9770@oss.qualcomm.com?part=3D1


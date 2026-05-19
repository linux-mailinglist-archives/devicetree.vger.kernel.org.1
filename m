Return-Path: <devicetree+bounces-299998-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AK70EZw3DGq2aAUAu9opvQ
	(envelope-from <devicetree+bounces-299998-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:12:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1C557BF7A
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:12:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA5433062616
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFE1E481FD9;
	Tue, 19 May 2026 10:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8SZFCO5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618C2481255
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 10:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779185371; cv=none; b=RnbCasj/2noYfn+DfiWwncHqKkhiMTdyF5FEsi7RqeUATvd6SGnCsx0bYO+vjF12E/kXP/MjQl35CfPKUEwIcqOaIZhidF0HvWjXSRLFhB+HiEwj91vCsH0ZwXmywJLUdRyw3DTvrw/6foGXODDw5MbGbSwvxUS0IXeWV10v3TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779185371; c=relaxed/simple;
	bh=rGddbMkYF5rwW4MOlCg0+32IJ9Az8I1L3D/0Y72t3r4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ytej/Afw8iifIsB/CrZgmKjJLUdY7I4Rwk3Tm/RXUkiE361e6fQpEOTS2FAmug2F2IdQr+/MBKGA/2zIYEIbO4KLmB7jgPhYWsMWsjWTLytra+4i4yaN3eumOAG6XqIAqkYUk6QnOjhncFinMsmPeLYDQ6BNRdxRXpc77I78TQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8SZFCO5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91C54C2BCB3;
	Tue, 19 May 2026 10:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779185370;
	bh=rGddbMkYF5rwW4MOlCg0+32IJ9Az8I1L3D/0Y72t3r4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=I8SZFCO5RW0jN7YIaa76SBjwtTpgC4Xb2fd4Xb5TwQPOZKVHcNfBgEI+b6cqHvIYN
	 cyJIp/BvuySw89flc2DxTO7HdTFtVc2ib9VPetVWKKYZfKzXYyXYIC8DkvgmgEfnS6
	 bRghILJXFEWDOJiTx/rV+3pjXv+g6vKeMQkaK05T5NV1cRSo6CnrEtHY478nFT2yUD
	 QqODw/sGnOPUTeyJpvKMJz0oHodwyIZCA/aTOkm1APk0bEkrFy8pOYAFLsVZQNI/IL
	 WmHHJatvexT7WDL2kyUER5/SH54yWr3GWq5+GHepvboD0aR0BuaMquWfL80tyhf+I+
	 S7gypKl/b6u7Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: rtc: Convert rtc-cmos binding to YAML
Reply-To: sashiko-reviews@lists.linux.dev
To: "Teja Sai Charan B" <tejaasaye@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260519095929.76011-1-tejaasaye@gmail.com>
References: <20260519095929.76011-1-tejaasaye@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 10:09:30 +0000
Message-Id: <20260519100930.91C54C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299998-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.70:email,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 9D1C557BF7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The schema restricts the `compatible` property to strictly `"mot=
orola,mc146818"`, causing `dtbs_check` validation failures for existing in-=
tree device trees.
--

commit 2e9837eab33637d478720ff763bc9b81afee1cf3
Author: Teja Sai Charan Bellamkonda <tejaasaye@gmail.com>

dt-bindings: rtc: Convert rtc-cmos binding to YAML

This commit converts the rtc-cmos devicetree bindings from plain text to the
dt schema format.

> diff --git a/Documentation/devicetree/bindings/rtc/rtc-cmos.yaml b/Docume=
ntation/devicetree/bindings/rtc/rtc-cmos.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/rtc-cmos.yaml
[ ... ]
> +properties:
> +  compatible:
> +    const: motorola,mc146818
> +
> +  reg:

Will this strict constraint cause dtbs_check validation failures for existi=
ng
in-tree device trees?

Looking at arch/x86/platform/ce4100/falconfalls.dts, the RTC node defines a
fallback compatible array:

	rtc@70 {
		compatible =3D "intel,ce4100-rtc", "motorola,mc146818";
		...
	};

Since the schema uses const instead of allowing an array, it appears this
might reject configurations containing the intel,ce4100-rtc variant. Should
the compatible property use a oneOf block to permit both the exact string
and the fallback array?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519095929.7601=
1-1-tejaasaye@gmail.com?part=3D1


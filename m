Return-Path: <devicetree+bounces-273560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GmpORMzsGl2hAIAu9opvQ
	(envelope-from <devicetree+bounces-273560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:04:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B95B252D33
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:04:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4F2E2324D4DA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:37:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63292D94BE;
	Tue, 10 Mar 2026 13:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="znfysqWf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483E731283E;
	Tue, 10 Mar 2026 13:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149590; cv=none; b=ud6pXUx8ObftpAho9Nr77i02s0T7KgQdb5kl0w+Slyb69K+cPBXDJURnvnkaNYlUcddnpGhs1Qu9wDklpPoCstLuf/0Y+WnA6DtNKAW5SddPZ1fJF/CVAHUWCUfZnAlgMv3FqWyHVy0W8/gWe3S1ZH2GG3QSoa5cJ7IMT0s95Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149590; c=relaxed/simple;
	bh=bH9wsSa3EYk7Hl9peg/9qJCP2klvL39kco0sIyLiBoE=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=oiPu7KJHXbVu3fCrZVlPdup8zzOZ6o+lA4lpzclaVX9LulFDeX5e86PmRQtWoWxZjB2gaWdoOXb/gs9RJSrypqaItFzbxjHKWeSiuaR2UvWz+hclO+DMG2XS0i8Pd7OGr+LFAk/TTX4RqpzRZnoE9X6zsb0MaSmNokkfCNrLCyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=znfysqWf; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id 45AC322A65;
	Tue, 10 Mar 2026 14:32:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1773149578;
	bh=bH9wsSa3EYk7Hl9peg/9qJCP2klvL39kco0sIyLiBoE=; h=From:To:Subject;
	b=znfysqWfExM7cPHusyDhydf5zzo7j4bcGjsjby59JKFD6XqoPRTK8UFHxsG0F7VQl
	 Shj9rxhtCvecsz97Nr2PW18VvdQxw6vbqDCV0MNL3dD3BAsgS6vPh+zwj/vgN8bwm5
	 azSBmgXfE6FlLBLZOOZ4ZlULK885xqURxydV5KCL8lRMY/anOG8UaT2NyHVR5obCWz
	 wKVuFE1zgHlt031TQPdsFrGXZxJzIDDIFIwTXJK6tBbToUicncpcMRYoQQCDjc8vUR
	 MUWpKhHly+IHCBVqb0o7Ecsl7xUfcF6ocmb9SqId+diCNFN+7sKlN3dMmd16RRPHxr
	 pWiRDFJqvXT+w==
Date: Tue, 10 Mar 2026 14:32:54 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor@kernel.org>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, Max Krummenacher <max.oss.09@gmail.com>
Subject: SPI loopback tests
Message-ID: <20260310133254.GA51497@francesco-nb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Rspamd-Queue-Id: 0B95B252D33
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273560-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[dolcini.it:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,dolcini.it:dkim]
X-Rspamd-Action: no action

Hello all,

I am writing to you SPI, test and DT people with reference to some need
we see in our testing infrastructure.

On our embedded boards we regularly (on mailine linux, on Linux LTS, and
on multiple hardware) run SPI tests, using a loopback connection (SPI
MISO/MOSI are connected together). The HW provide just some pin header
and there is no actual SPI slave device connected.

So far to test this we had some out-of-tree DT overlay abusing the spidev
compatible, however we'd like to move away from this approach and have a
solution that is 100% in mainline.

Manually unbinding/binding the driver in userspace does not seems as an
option, because there is no device node.

One option that I could think of would be to add a new compatible that
to describe this single wire loopback connection (something like
`linux,spi-miso-mosi-loopback`) that would bind to the spidev driver.

I am aware that you all DT maintainers shared in a pretty clear way your
view on the abuse of the spidev multiple times.

What would you be your advice to handle the need of an SPI loopback
test? Am I missing something and there is a solution already available?

Thanks in advance,
Francesco




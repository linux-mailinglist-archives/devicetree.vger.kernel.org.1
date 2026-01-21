Return-Path: <devicetree+bounces-257703-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ED4DLPU4cGmgXAAAu9opvQ
	(envelope-from <devicetree+bounces-257703-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:24:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 448074FB73
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:24:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6170DA29CE7
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:22:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 495F232E124;
	Wed, 21 Jan 2026 02:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPhy2REJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A4313B58A
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 02:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768962160; cv=none; b=OFvNqKaMdrObAe8fc1WzHaF92QQytV9o0bg/syNeIZvzCH0IBKuaQXcu3L7DJuuT/xWhX7tt0SK7MGgEqslicmnrhzdCIu65T/QCtyrWsGn0lQ3sEx2ujKdOaiwN+4f2pAjroRMc7sx0ploxDF2UyQHbTfAHj/WIf44aX6MG9GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768962160; c=relaxed/simple;
	bh=WPHWu/LpocsSYMQ/2OaDUkjmiTPmODl41pVsAU7FHFY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hBh1tfDafm1RYiPwCrJV4tPlTDw+DI8Fle3Nf8nRit6LCTZS+91P0b1lPcGTo/b9RKSudyE4BAMCv4tYb66Gv5s+j2Yp4F2pFpV63unWQxeLOqjwDtMh39Wv1Ifh7mHAn58HHC8HYH/+iGKcSbgYNlxZ1y++6whbF8lMhCab950=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPhy2REJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF78CC16AAE;
	Wed, 21 Jan 2026 02:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768962160;
	bh=WPHWu/LpocsSYMQ/2OaDUkjmiTPmODl41pVsAU7FHFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cPhy2REJPD9a+F/zZdWc/mIf0C/rycSCn2bbcHiBVZ4mszSnkw+7X3LQWg3YCj15h
	 2SqWqB5VupEGPs0bOGWVwgjO3uLkKr2obdNvtb9+VX7oiytgRxpzIA/99VC3+1gLfq
	 59Ihr55U+yHAjvyUTkfxKdfjP29D0NLw7HPYD6AxOvlkakzxohUcJ6bgM38KwkbgDf
	 UuPKmNQclaxnXpywcBt4UghaOuyy5zyCAMCNXP+rC8l0CDRL4yU8Y9Hh12l6N0owVL
	 QNtK6mgMj++8AMmikjYJabrQuUGNfGAmLdHSZodlKP2qIny8/uFEweVUXSIBKVsr9W
	 bKxuoQxKHJL+Q==
Date: Tue, 20 Jan 2026 20:22:39 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Nauman Sabir <officialnaumansabir@gmail.com>
Cc: chunkuang.hu@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
Subject: Re: [PATCH v4] dt-bindings: display: mediatek: Fix typo 'hardwares'
 to 'hardware'
Message-ID: <176896215733.1801340.4214852416003152010.robh@kernel.org>
References: <20260115230058.7704-1-officialnaumansabir@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115230058.7704-1-officialnaumansabir@gmail.com>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257703-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 448074FB73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 16 Jan 2026 00:00:58 +0100, Nauman Sabir wrote:
> Fix incorrect plural form of the uncountable noun 'hardware' in the
> MediaTek DP binding description.
> 
> Signed-off-by: Nauman Sabir <officialnaumansabir@gmail.com>
> ---
> Resending as a standalone patch. Apologies for the confusion caused by
> the previous submission, which was incorrectly sent as part of a 3-patch
> series. Each patch targets a different subsystem and should be reviewed
> and applied independently. Please ignore the previous submission:
> <20260112160759.19027-1-officialnaumansabir@gmail.com>
> 
>  .../devicetree/bindings/display/mediatek/mediatek,dp.yaml       | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!



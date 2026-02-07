Return-Path: <devicetree+bounces-263621-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLhtFFRWh2kRWwQAu9opvQ
	(envelope-from <devicetree+bounces-263621-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 16:12:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CC5106570
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 16:12:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F3C0300EFB9
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 15:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 082F8352FA9;
	Sat,  7 Feb 2026 15:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL2vbnWt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2C5352C3C;
	Sat,  7 Feb 2026 15:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770477136; cv=none; b=igJMbMbHtbPwj0nQWkcrGx1Gykn1jaQk3JpfN/SoKhOaGxSBSZLbmhfuCsWXv2cJUVD07y7PjrYxpHWm8S99LtIAcBrvK93ZfLaNnvv4kyheljF+GO0iNy3gkzT/mMWPtER+Bq9nCsH0BVF5s9Ol7e2x0sSeWH5RvA5JNZFlfWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770477136; c=relaxed/simple;
	bh=JvBlJSuksOwxQJtMnmTxIS5cYgDEGQDbFrw/p87UcLE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=j89mIjHwMalJ0HeoROHxwaJuSVebHxu15K4oK89YKkNi6Hbd2pCXfrvKgon5nFE3I0QPuJgkNR6EjXRpa34tSpZpZklYcEnX9Sn+9fb0FRtAqHonuGBrS1lSGJ1oki5zLJzTuUt2/ElLbwtLc/yg1IAfb1pV0D+KcmQ7YFhBM3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL2vbnWt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B01EBC116D0;
	Sat,  7 Feb 2026 15:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770477136;
	bh=JvBlJSuksOwxQJtMnmTxIS5cYgDEGQDbFrw/p87UcLE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=hL2vbnWtAk1ZDu5Hw7RUibKoKzbsoT9o9mRpSAwF9wr06w7eRMHAbxSrMxthG/s9A
	 fsQ67+kh8Mu8ReaqOOBS/uieYz2xW2Ab/CwXrnBxnpYG10F+LwSJCVGgG9aUpF42dR
	 ASobJ2vQN1cbnmZl8OEW9J1LnGAZR7X8HoWKOTXZKgEb+gz4sLZzTb6/aWTd0FUrw5
	 sU82dp2nrNmXNKY1+BtHKCaC5zyt0xK6MB9E4aiS/QgDMNz/09oSyosinmnaK0XtoZ
	 jr5dUX7XnZPKV7Sz/K8sE+NXJdk7rR3OqSFS6zuppX/Auk5KSJE3XbfqIhALBwXDwN
	 myqgnG7F/y0DQ==
Date: Sat, 7 Feb 2026 15:12:07 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Jun Yan <jerrysteve1101@gmail.com>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linusw@kernel.org, stephan@gerhold.net,
 hns@goldelico.com
Subject: Re: [PATCH v4 0/3]  iio: add support for Bosch BMX055 IMU
Message-ID: <20260207151207.0df7493d@jic23-huawei>
In-Reply-To: <20260205-greedy-uninstall-a23f2e0e9a01@spud>
References: <20260205150734.525947-1-jerrysteve1101@gmail.com>
	<20260205-greedy-uninstall-a23f2e0e9a01@spud>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263621-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,gerhold.net,goldelico.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: C5CC5106570
X-Rspamd-Action: no action

On Thu, 5 Feb 2026 18:39:18 +0000
Conor Dooley <conor@kernel.org> wrote:

> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> pw-bot: not-applicable

Applied to the testing branch of iio.git

Thanks,

Jonathan


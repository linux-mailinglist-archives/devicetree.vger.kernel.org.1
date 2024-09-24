Return-Path: <devicetree+bounces-104984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3C4984C39
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 22:35:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E6DE2847B5
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 20:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0694E139CE9;
	Tue, 24 Sep 2024 20:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjqSnplw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6BEF41760
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 20:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727210115; cv=none; b=G1Kll8foIsnZidjxdpuSZt9wNBsr/PyIrzAEjvfrz+JVjiD5vRiExgrIXC0r9p0gp3/6MTWob4DKyFirow1bB/EXze7BS5MNwIxGzMMrFqmaSRrrun2tdtMKxNb4zNDXgNzxsQ0B8+K3ES9OfUKMXE65SBw+pTjRwCg8oX6Efv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727210115; c=relaxed/simple;
	bh=nSEnM1At4kpvimlEpDJGA04NxEyK2EzYSlUSoV8ePHU=;
	h=MIME-Version:Content-Type:From:To:Message-ID:In-Reply-To:
	 References:Subject:Date; b=SA9XG7IO86jQ6WnvfMkFc7Xh6Ot9q3unP/AKod7MpTFErOWIlAD46Zzags2Z5Fz37bqWRnP8i/5wN+xcHIK2+EnsMyzFiXE9NPctXa5ERLy/VIsXJ+GZbMpbWaEIL2fHndr5FhvJvv4HUdcOk4SQ6htiCrAqTky4vDVs7OXvh3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjqSnplw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80D0CC4CEC4;
	Tue, 24 Sep 2024 20:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727210115;
	bh=nSEnM1At4kpvimlEpDJGA04NxEyK2EzYSlUSoV8ePHU=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=NjqSnplwopHFLJmhL1BIfsaelygGCwLjkJus0laeG5t3As4m36uTN2+Qp5DtpO7Qa
	 RpnN4vjYLIiBwO+tw52BFx5OMoyG2gvpo6eFXKyg/wg0FZfJ21hf3ViSQfdZuCgpQ3
	 KsTcE1jB9xlYPVNZklsLOgyujdLHnJhCEUveGiT0f2KV1DjpCpBBz/jKersTsa3hoe
	 MmmfHv2i0e/i/qRbSmIa1MHyK+v8/qZVcGstNPN1kziROE4hRa9x8zl3qc4K4c1yw6
	 mDvgDo++zTTEYj96O2zJqqUbIdKxCybBfWSjQ0aNvXacFN6MWbRJuqpw/0/u5qr0CA
	 EyC35NDtkT5dQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F00623806656;
	Tue, 24 Sep 2024 20:35:18 +0000 (UTC)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
From: Bugspray Bot <bugbot@kernel.org>
To: luka.perkov@sartura.hr, devicetree@vger.kernel.org, helpdesk@kernel.org, 
 konstantin@linuxfoundation.org
Message-ID: <20240924-b219315-03ceea56d1a6@bugzilla.kernel.org>
In-Reply-To: <20240924-powerful-amber-husky-a53cbf@lemur>
References: <20240924-powerful-amber-husky-a53cbf@lemur>
Subject: Re: Bouncing maintainer: Luka Kovacic
X-Bugzilla-Product: kernel.org
X-Bugzilla-Component: Helpdesk
X-Mailer: bugspray 0.1-dev
Date: Tue, 24 Sep 2024 20:35:18 +0000 (UTC)

Hello:

This conversation is now tracked by Kernel.org Bugzilla:
https://bugzilla.kernel.org/show_bug.cgi?id=219315

There is no need to do anything else, just keep talking.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (bugspray 0.1-dev)



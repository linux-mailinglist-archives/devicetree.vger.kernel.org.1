Return-Path: <devicetree+bounces-104981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF39984C34
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 22:32:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0295C1C22DCD
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 20:32:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFF7A136328;
	Tue, 24 Sep 2024 20:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="VfMSJ12a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7C326AD0
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 20:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727209923; cv=none; b=GsZxQf/630uuW569bTjVac4DXtc9jnyyjQCjKA/ZLez/9ZLnGdMuXewEhNEpY6xK6Jq+U9Dt3CnQVPRTIZBLOBHR1IX46b+CxDWJMTaoLEzV3WdbpEMyVUDPVRst9Zc0JT3ktQHv9bE1REFERLkwOmFbKvT1oL7YBRSQQurg2o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727209923; c=relaxed/simple;
	bh=1in3fJTXzJN1owYp36OY+NqRy3fKAZfxa8RM6vUXOZA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Mvzck1NH2Tc2lZcE3/9pq220PvX7LFojs9gbbJS5PxzmUVsCWmRp55Eu9irnqKhzVdkGMNHbymr3C0v9KRQeB24ghD6YoOJCSEmnLf1UgT+yzR69MvwmlUGAkE6hToIIRM3iZ+dJVbuC0idsrizTnNlc8LKxBnP97LnpIdo1h10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=VfMSJ12a; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42FA5C4CEC4;
	Tue, 24 Sep 2024 20:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1727209923;
	bh=1in3fJTXzJN1owYp36OY+NqRy3fKAZfxa8RM6vUXOZA=;
	h=Date:From:To:Cc:Subject:From;
	b=VfMSJ12az/4eu8ASHb/6/Ph+zC9tAUqKXvAsHS7osmMbQFZ66z+yOaTD0Ri/SpFiJ
	 IhvMWSZJ8JIn8/T1N1jF1jXT+kBl6bJTtI28Bh+xCokd1z2alVO4vxPDmbEBfgYPXS
	 8AQ2xL06CxAN6OKMbNXuI9WgVYShyq/H635GfUA4=
Date: Tue, 24 Sep 2024 16:32:02 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Luka Perkov <luka.perkov@sartura.hr>
Cc: devicetree@vger.kernel.org, helpdesk@kernel.org
Subject: Bouncing maintainer: Luka Kovacic
Message-ID: <20240924-powerful-amber-husky-a53cbf@lemur>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hello:

I'm reaching out to co-maintainers of the following subsystems:

  - MIKROTIK CRS3XX 98DX3236 BOARD SUPPORT

The email address for one of your maintainers is bouncing:

  M: Luka Kovacic <luka.kovacic@sartura.hr>

There are several possible courses of action:

1. If you know the new email address for the maintainer, please ask them to
   submit a patch for MAINTAINERS and .mailmap files.

2. If this maintainer stepped away from their duties, or if co-maintainers are
   equally unable to reach them via any other means, please submit a patch to
   MAINTAINERS to remove their M: entry.

The goal is to have no bouncing M: entries in the maintainers file, so please
follow up as soon as you have decided on the correct course of action.

Best regards,
--
Konstantin Ryabitsev
Linux Foundation

bugspray track


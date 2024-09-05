Return-Path: <devicetree+bounces-100279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D436F96D0A5
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:43:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C6E21F25B9B
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 07:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74AE419340B;
	Thu,  5 Sep 2024 07:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MO6og5gZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A8018A94F
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 07:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725522201; cv=none; b=n/CBplF6im2Rh8ZTrt06LyvUYBfCKtnbVWYfnM/4XdctirkgRGmdhi/9K0vw5ylWz7bbO5Gz9I6ekAfHq8iZ+yxZP93Lvh28QN7Ao+WJo76qudJcyuGAhS7DRgGnq0a/e9hhsFfPf+MlSCMcnmam1gHXEo+W0MnTIryJLJvAtHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725522201; c=relaxed/simple;
	bh=2ywi2ABrKwj13e2om25ul5oQoXN4HOJZfN35u/fSyhE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=O/JWUFB4mYzWwfaEAuQrimLwjJ0dbFd8PI2RGY90Qv5FKXeOh0yKbntaTPdVEBJa5EKMkbyVkQUkd1dJ5rv2vnN4z0JIQMRkDlDZLAVyNQAREm6bZ+WJMOpgHTNB3kdkkAFFMaMP98mu1R1QmcQBbzeWZ0JINCpahM7fW5qC4wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MO6og5gZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 489CBC4CEC4;
	Thu,  5 Sep 2024 07:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725522200;
	bh=2ywi2ABrKwj13e2om25ul5oQoXN4HOJZfN35u/fSyhE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MO6og5gZ6EstvJSCXUtF02tNnWU0mFhi4rrSzIyf088/j5GrSEyvjabPytVfJxN6Z
	 4MPAmW545PLoz9H0Cub9XW4uRT1WkSJXg/lnNNMBvh6UGFI2fNmmIdwTFb3eOh4TjP
	 biAFTRO3ntP/yUun5rMPX6WRzrbk8T9W4QfMduQ1BKz6gI3dv0pPfjl3FtOzVVpnEf
	 rIiMXAcTi2bEvtbFd7zNfmGmfHs3+TFhv+jFTTUsEecjzoGoNXsf5XILfPbDR/kh4C
	 xkNjM18H4EpBBhLctiLiCWEkDt5q1eclH0NqoATDhgUYUPZ7XN0K8Mn2UIyjpJc041
	 HVqezAJLhWLUw==
From: Maxime Ripard <mripard@kernel.org>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Ryan Walklin <ryan@testtoast.com>
Cc: Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hironori KIKUCHI <kikuchan98@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH v3 2/2] drm: panel: nv3052c: Correct WL-355608-A8 panel compatible
Date: Thu,  5 Sep 2024 09:43:11 +0200
Message-ID: <172552218878.2901646.2731877216171955845.b4-ty@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240904012456.35429-3-ryan@testtoast.com>
References: <20240904012456.35429-1-ryan@testtoast.com> <20240904012456.35429-3-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Wed, 04 Sep 2024 13:23:22 +1200, Ryan Walklin wrote:
> As per the previous dt-binding commit, update the WL-355608-A8 panel
> compatible to reflect the the integrating device vendor and name as the
> panel OEM is unknown.
> 
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> 
> --
> Changelog v2..v3:
> - Use integrating device name with vendor prefix instead of OEM serial.
> 
> [...]

Applied to misc/kernel.git (drm-misc-fixes).

Thanks!
Maxime


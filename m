Return-Path: <devicetree+bounces-138296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCF7A0C5F8
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 00:55:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04C273A678C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 23:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C05D21FA177;
	Mon, 13 Jan 2025 23:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeFtTiAp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6571F9F5B;
	Mon, 13 Jan 2025 23:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736812524; cv=none; b=VrZ/oLSKtTygX0RpufJjRsV8qDlWu9t5eCO+OmrPqeiYb+abagXndZOHvUsVSgDj6RnrUlQVIlP7/vLbR0YfJ6FitxrB1C4jbj45BcNWg1E9my/2FXAgXyeUSOBFZircl9NV4CHo9PCgGma4zsJ615QZ24fWEUKtq3+aMkfneGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736812524; c=relaxed/simple;
	bh=v1csAdUw/fdWRFie4RNTDFlFTYVZvNDOmzZv0AR/6f8=;
	h=Message-ID:Content-Type:MIME-Version:In-Reply-To:References:
	 Subject:From:Cc:To:Date; b=O8rhnoAvw1bfdNG3+s2qZmYVo0N2e5ULJT3MRLRJNF4fWvHNG1xuNtp7dFHQwTKA5YfpzPLK68NC6fWzRt+lKB0AR7lVO+jCBllaXsL3r3o65m5/a+wCkXBIi9HRRCIxu8VfV9XtDXJS850KmPdp7CRdiahH9S3T/0qKx/Tdz7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeFtTiAp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00432C4CED6;
	Mon, 13 Jan 2025 23:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736812524;
	bh=v1csAdUw/fdWRFie4RNTDFlFTYVZvNDOmzZv0AR/6f8=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=jeFtTiApE6ROXPKIorxkyGPTgWBZWV0JWInqszQ+YG1xNzF9F+mJbpLd6m4C7S5pL
	 onYdE6guZOHA87jbg0vBbqpkN1XXXdFs02R0+Lg64RFcobhBcOc1uM6F8teTkJysLH
	 qYOVNdgTU3uv2ImogXK1mIn1vZY2KkIwIZC6i3MFbJ0p+TLD8WKwbTRGqentLqIotn
	 ijXqLk1fAGrIMnK13SvnWWolff7+Hx0bgmbJSDBzOwUXy37OMKPK/UJxeWg2x4Amee
	 0cUI+yQDkdqyoLQS2UonZCK7iMYxKuUUxx5rIZ0eLA+o3d0X0WmZXXYxK3dbmwFxps
	 sSMvNRf4qlDDA==
Message-ID: <70be46762bbf28b87ed63369420b7392.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250113231030.6735-4-ansuelsmth@gmail.com>
References: <20250113231030.6735-1-ansuelsmth@gmail.com> <20250113231030.6735-4-ansuelsmth@gmail.com>
Subject: Re: [PATCH v6 3/4] dt-bindings: clock: add ID for eMMC for EN7581
From: Stephen Boyd <sboyd@kernel.org>
Cc: Christian Marangi <ansuelsmth@gmail.com>, Conor Dooley <conor.dooley@microchip.com>
To: Christian Marangi <ansuelsmth@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, upstream@airoha.com
Date: Mon, 13 Jan 2025 15:55:20 -0800
User-Agent: alot/0.12.dev1+gaa8c22fdeedb

Quoting Christian Marangi (2025-01-13 15:10:04)
> Add ID for eMMC for EN7581. This is to control clock selection of eMMC
> between 200MHz and 150MHz.
>=20
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Applied to clk-next


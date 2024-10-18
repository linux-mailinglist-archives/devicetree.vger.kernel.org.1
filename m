Return-Path: <devicetree+bounces-113093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7FD9A4988
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 00:12:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05DA71C221ED
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 22:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24B618D63A;
	Fri, 18 Oct 2024 22:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ll1mMcrx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A6418FDD0;
	Fri, 18 Oct 2024 22:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729289564; cv=none; b=a7ewIbMN1nmkgwR1DxkJTghmoc6HcvejV8kJ5qAVwJ81WVa9KNH4za3SvafJxsIMH/djSf2sR0/2WefopB6v5ltIkuUuruDiv3tnabC2beU9eb0PmfmwjxTNnIXZUx5nZaM7w5rBLJimd5XYUNGFzynDNvPbwHWiIk7avA+8t+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729289564; c=relaxed/simple;
	bh=zwb+MwDZG+wPKZ8N4kXechKHmuS8PAsWwQ2dHetL6NA=;
	h=Message-ID:Content-Type:MIME-Version:In-Reply-To:References:
	 Subject:From:Cc:To:Date; b=fcINJS4xBVJPiAawARj/Gr+tYa+PK4+zh0KIwSoYV6xTOxrgNoo2Y2NF3seVPmngPemXg7j9U1jOKstOYr9saWKv03AC49ypp+CqopXRN1rHSQZ0DkqRo9nqcd8xBKeM4pw0Er53xk3T2Vwbur+wrHRAB1lLz9bDI3wIzUID86Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ll1mMcrx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37E9EC4CEC3;
	Fri, 18 Oct 2024 22:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729289564;
	bh=zwb+MwDZG+wPKZ8N4kXechKHmuS8PAsWwQ2dHetL6NA=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=ll1mMcrxyveJ0rjqcYkq+ZlceYQ7F/qG1UIPWpr1s6ZggSl2YJYnKSSKvKJOvUpzy
	 qU3Fk7T7clIGgxF9riv1HIa/L4RXfeFuZe3UkNZcguOQvhwxaqNKMjX5BRFoSqLiLo
	 v3nChKOWykZkWz5opxsIM0xdGbC50/z8mNP0kTsqViwMErz4ap1kFyoZRVRE1S+I/G
	 2AXR6LRa4t26yFOUPIpq3sJoF/WCGvd7nkpQ863piHeUZOPpwGcMDfzIMBF+WKPb8A
	 tY6BkAgHPEFyBhi2oXW5QZNaezLPLsn9WrURQMMVLuxP79UQ/bN98E7Nk/IHZvokp5
	 1e/99k1h0H1WA==
Message-ID: <b36c8c69df7c86d26b95ac87f8837796.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241017-sar2130p-spmi-v1-1-43ac741ee071@linaro.org>
References: <20241017-sar2130p-spmi-v1-1-43ac741ee071@linaro.org>
Subject: Re: [PATCH] dt-bindings: spmi: qcom,x1e80100-spmi-pmic-arb: Add SAR2130P compatible
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
To: Conor Dooley <conor+dt@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Date: Fri, 18 Oct 2024 15:12:42 -0700
User-Agent: alot/0.12.dev1+gaa8c22fdeedb

Quoting Dmitry Baryshkov (2024-10-17 11:14:03)
> SAR2130P has SPMI v7 arbiter. Although it has only a single bus
> configuration, use the new bindings for v7 platforms.
>=20
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Applied to spmi-next


Return-Path: <devicetree+bounces-156612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 335D7A5CD20
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:04:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3652D7A2F36
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 18:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEC8F261580;
	Tue, 11 Mar 2025 18:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVLtqc4+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B39025C6F5
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 18:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741716280; cv=none; b=LfqO6yDJvlxIG54OvxVx8NYv7ezOt6f+ywam6fHfg1uQXzSQzP2LdUl2MWFadQMjq8thLJlp5YVBM/SMnqYyAHfVxcnoreNKKAynDONkBIGRcAg3OnV0jF/3XwJvqTD7z3zTlwuYNsNs53yg4lFenR9+o29i8HtgXMZgDR0DHgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741716280; c=relaxed/simple;
	bh=zn3uUZNWsdE3x2MLSqtbb/9+3DdY8cFVykXA2GTlNjg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZYGd+ZYCV8nZkf8UHyAR/Cw30Sckf67ZxBcIH0ZwwhHGuAzDhHQspCzzZHiElcuskXv5JmqblzNSFEKBpROWDPHDHeG9LgzVxR4zC0uFiDUwy5PkuiWJiLriizixSsrilag49gGpdTNYqPznqjF6KX8Ls8dwCvw68v5qiHsgJ1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVLtqc4+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE8C6C4CEE9;
	Tue, 11 Mar 2025 18:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741716280;
	bh=zn3uUZNWsdE3x2MLSqtbb/9+3DdY8cFVykXA2GTlNjg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sVLtqc4+GjFTqd+WwG0SCqfZMa1PWZIR3Yirhn0Gb7XEh6EeMV/9ji7+WDNBArIbA
	 /kfna8SmsJ5n2KvOlgMKxzat75ZESHNBxYMQbZdFupncDkkU7yDyrrfwy6ok/b4Vvw
	 s0AD9PRfnQwgNBcmubnljLjw42YbxNukusPXxYacf4wwmjX6To5zKYh1rw6fJSNLZH
	 uucgj8e7Uzwg84ag+xTbh1sqkRauvmGgVG5O7GKLifS9z3XjUihampR9PArul04jfY
	 ZeEgOXcSO7RDAojZx4gLaaFhzdtMGN35Yho67+JcNblbeaHYbhJJ6calnQ6nD4dmDr
	 P5x7Ehy/225lw==
Date: Tue, 11 Mar 2025 13:04:38 -0500
From: Rob Herring <robh@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: airoha: Add the pbus-csr node for
 EN7581 SoC
Message-ID: <20250311180438.GA3903655-robh@kernel.org>
References: <20250308-en7581-pbus_csr-binding-v1-1-999bdc0e0e74@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250308-en7581-pbus_csr-binding-v1-1-999bdc0e0e74@kernel.org>

On Sat, Mar 08, 2025 at 09:35:45AM +0100, Lorenzo Bianconi wrote:
> Introduce pbus-csr document bindings for EN7581 SoC. The airoha pbus-csr
> block provides a configuration interface for the PBUS controller used to
> detect if a given address is accessible on PCIe controller.

Assuming the binding is complete, you can just add the compatible to 
syscon.yaml.

Rob


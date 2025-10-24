Return-Path: <devicetree+bounces-230759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF7CC0570D
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 11:53:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5B0134FD7A9
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B9BF30CDA1;
	Fri, 24 Oct 2025 09:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTEji891"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AE428314A;
	Fri, 24 Oct 2025 09:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761299629; cv=none; b=QqvWxKJR9kVN7fXRTNWee+0flzIR0zFe8J9M5dc7e+vUCCtJNtIGOG5iJGpq8TS7IC99ZbMtUvjAZa+FLBjnpV+IyhuKwzFSJLunajKQeGCyfMM2YBDpgBLiJfN6kA2jfSoxItaBeKk10tKBJupgktmNIysn/utaudS99yM4m5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761299629; c=relaxed/simple;
	bh=uxs+nS4ovmqfmgWsESycOMJFJWQ0CwLd1wPsOwEBxnA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q9Ji0SLRIZxxWL3/n1dOCtGv2PgxxUI/LNfQ1V1YX1Bi3gV5WjVtp2nUSZYW8X8XvI1vCgaJF6+IQrJxWfvV5icg6eJrx5fgUYA5yIkNewr9q33AXImm6Q/xfovDlAbxf3l3xWCaFb/9zrU/bkLw4Ag6XoHZg/HyqZa6p5Iyz1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTEji891; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C9D0C4CEF1;
	Fri, 24 Oct 2025 09:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761299628;
	bh=uxs+nS4ovmqfmgWsESycOMJFJWQ0CwLd1wPsOwEBxnA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tTEji891KU7q0wJZYhjN6Kx82a6amB0tOHlwWLn9U44x+gXWPcZYWsot7W2rcqJvB
	 tenhl1bcpth2hKeaWcFZLEk1WPwTMauT+Se5s91TpZ7qP62jDd765EwcqktYfjIRu2
	 nmUqmdry05eSvuODJQYSe+CliOgJMuCN5P2dYeY+spLmCnI1WOrV1eBSq3xvH+TDVG
	 U7A5CqHG7tteDMZoN0savo5Oqd7WjQNQcmYDEFc1CPNovx2T6fEunFA5R3H5zeswWG
	 pa4axwgtp5YN92UYQAwLc9utGMzqQQImIxJ360jIcuEhCS1mgqZlR6i9qo4H+Q9ZTs
	 Eximmyg4bMiGA==
Date: Fri, 24 Oct 2025 11:53:44 +0200
From: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: bus: Convert cznic,moxtet to DT schema
Message-ID: <ayk6mwkxbis6fj2jpbakgiybeigk6epzectnw62klf3yo65uts@itos2dgrhsnr>
References: <20251014153009.3783183-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251014153009.3783183-1-robh@kernel.org>

Reviewed-by: Marek Behún <kabel@kernel.org>


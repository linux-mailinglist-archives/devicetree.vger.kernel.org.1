Return-Path: <devicetree+bounces-220245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D954B934D7
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 22:58:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F01F01645E5
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 20:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F70D27B34A;
	Mon, 22 Sep 2025 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4RstmgO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF904A95E
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 20:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758574696; cv=none; b=oZ3CShQaeGebsEZ83HRNC4XZ+Y64TLeChCplOH4RMR4Sf5C+f3AY5/AKzvb2X+iB22y0aQCt/vSrmiCJDTnmCz1LU3KZL1NujTTjrcLJIMHVuIBHCrhPBZJk+5ca3Z1ILUijfNRbaeuq+5ngwDtRGSIDz15o2v1aaW1hUkxXvXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758574696; c=relaxed/simple;
	bh=a2EzQ2feyAihhU7qeCv0457wm3+uh5jWnvFmyEY60gw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WySu/KOSe+/pbut3nhzMrv+eB4/fAJEGV/bnXCS6Xehu3ksT06lcagCk7O1JA6UgMq/wi+47vkYGXAzfEZhYM41lFnLvnsOwD41SmultHmTvXDusw7CdJ3j7YRxD4At5Rit8+ORS0kAPcarOXOROrHl0Uq/LugIVM+S3uOMlshQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4RstmgO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FC2AC4CEF0;
	Mon, 22 Sep 2025 20:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758574695;
	bh=a2EzQ2feyAihhU7qeCv0457wm3+uh5jWnvFmyEY60gw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m4RstmgOxjwBOO7P+lNGUfj0U9lHz1Sid69uTlLTcR7G5hSChZpZrCcKhSdEj5JWz
	 SMcrCaU1vTYw/lllhxEVUkxREF2te7belUp11deyGrtlpWjxF7i75BSnR8tF8Fb6Vr
	 5gWL77IwNOI5dtE3x1VcwF8Dz0+Uc/cwAqLGbpvOUKlAXPq4Q8CAXSYEveLLe7sIUu
	 dN2p2yYXoRDLv32fQw1vjrPrPNhrd5pUlls666mi3Emfvgx2Gij+m2PFCZwN7U/hxj
	 deZf48P1HRwyyFMlkTBDzZANwIz3qSYNosqOmWnV4AiPz+BD2Ly81V/mq9vBjWb9h6
	 ONsTt7m9X2JvA==
Date: Mon, 22 Sep 2025 15:58:14 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Eddie James <eajames@linux.ibm.com>
Cc: conor+dt@kernel.org, andrew@codeconstruct.com.au, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH v7 5/7] dt-bindings: hwmon: max31790: Use addressed fan
 nodes
Message-ID: <175857469316.1311709.16344129263552911136.robh@kernel.org>
References: <20250922175804.31679-1-eajames@linux.ibm.com>
 <20250922175804.31679-6-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250922175804.31679-6-eajames@linux.ibm.com>


On Mon, 22 Sep 2025 12:58:02 -0500, Eddie James wrote:
> Since fan properties can include reg, the fan controller should be
> able to specify address-cells and size-cells properties and use
> an addressed fan child node.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  .../bindings/hwmon/maxim,max31790.yaml           | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>



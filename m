Return-Path: <devicetree+bounces-136160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5943BA0415E
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:59:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4783E165A6A
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD64A1EE03B;
	Tue,  7 Jan 2025 13:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn+4CxlD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2718156F3F;
	Tue,  7 Jan 2025 13:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736258395; cv=none; b=pBBFZolbY7EeGVaJlFebE6egzDSdW4NIBYEWCmzTipWd6+K/+MxYujIHhL4J0x3bNuKxX4AylDWC3yxzUPt3UeZkryk3NxokerpaPVH5a7DZs2Z1EicLvOttn0XJDS8Zg9IDEA4z28ajIob41QA2N0XFRl20pAIJdsy7gpP62RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736258395; c=relaxed/simple;
	bh=L7eQrOeAfRkfMKCFDTnOc1QtRjDr4z/HI+RTxASHF2s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XrcQkkgplgLFh7DZB0wrcubV6RO6iufQODDkiqrIZNFXCvkCgvVmmA8/DZvFsiKoHWALnw6HtddX/Fq9RO4uJTsj05PNvWEZcP+5Mu/ws8aHhAce0JhhvINCignVvO8wfbOzAI5sZFt6MKyLEAFifurRUrzibXxRHEq4nukiR98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn+4CxlD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89F39C4CED6;
	Tue,  7 Jan 2025 13:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736258395;
	bh=L7eQrOeAfRkfMKCFDTnOc1QtRjDr4z/HI+RTxASHF2s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Bn+4CxlDXtdfH7ozLweXfLH2CElYBUI2pac4tlNZTDhBRa/Ab+u05JKkZAKvhsuLV
	 sHswtkIXBeI/C1U7qmfbVJsTmX2MKJCJ9n81BOklrWiv8NnUIa50nwpXRbAHRhv0LK
	 /m6fxDkI1F097O/b3+Rt2rqGQs9ZCnaG9jNwbxcUjZ+yZkCynyeZpIpdbo9VKHfTG2
	 xGxhfMAzQtjBAc3J3toFfFnNeu5gqcpSRvaZH0z+imTQfNC6w1UcIVvxjUi38WsqQZ
	 4VRZTtVCKQvcoflSvZVfT61phhrRysliNmNEdRoOZyNx1KlOMlnwW2gI7LlKfpQn82
	 snRyLJTkM2rWQ==
Message-ID: <00bea5d9-4a53-417a-911a-10ceead88b3d@kernel.org>
Date: Tue, 7 Jan 2025 15:59:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am68-sk*: Add bootph-all property
 to necessary nodes to enable Ethernet boot
To: Chintan Vankar <c-vankar@ti.com>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Tero Kristo <kristo@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Nishanth Menon <nm@ti.com>
Cc: srk@ti.com, s-vadapalli@ti.com, danishanwar@ti.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250106123122.3531845-1-c-vankar@ti.com>
 <20250106123122.3531845-2-c-vankar@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20250106123122.3531845-2-c-vankar@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/01/2025 14:31, Chintan Vankar wrote:
> Ethernet boot requires CPSW nodes to be present starting from R5 SPL
> stage. Add bootph-all property to necessary nodes for CPSW to enable those
> nodes during SPL stage along with later boot stages for AM68-SK.
> 
> Signed-off-by: Chintan Vankar <c-vankar@ti.com>

Reviewed-by: Roger Quadros <rogerq@@kernel.org>

-- 
cheers,
-roger



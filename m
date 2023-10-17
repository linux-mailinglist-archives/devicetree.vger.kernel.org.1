Return-Path: <devicetree+bounces-9426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1497CD042
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 01:08:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC4741C208A8
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 23:08:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC1FF2EB12;
	Tue, 17 Oct 2023 23:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trZNIvNo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A7782E402
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:08:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDF05C433C8;
	Tue, 17 Oct 2023 23:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697584128;
	bh=Qmn/cv9pbKyZyD094B9+g5d/a/JtJybAPrMLLFxlQ2Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=trZNIvNo6P66NpnY/WfCIv8B6Jq1ibuMzU9Sq07cAYpa0MhXeVFvcBVWVESTtNu15
	 4ic4Prep/HnQZ4ET5Fr7cGit681kPLibNqK8mfPDihjHGH1/IQ7xQ+9XoSkHVP+R2i
	 FeIMgcse7Lo12fS2HU58r88oWYV2OaVr0XrlbMMCTqtuTdiu8QHYL2VLNb7drn5U89
	 R9h2izpmbq4G81BIyvyAo0My0vUUP4tlUCo1CsQMb/EePkdz0ZOnKGDjpgc9OR48TT
	 arC7HmKZ2HJx8s7Rhsvq6BoBfzADqvv21jb/QzLYhpV4EGrRoaz6kEHNPvuce7toWA
	 c0vR8IVo55yBg==
Message-ID: <93f6cc7c-54d5-4347-a107-eca1bd5a4ac0@kernel.org>
Date: Wed, 18 Oct 2023 08:08:44 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: ata: tegra: Disallow undefined properties
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231016155555.2974051-1-robh@kernel.org>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20231016155555.2974051-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/17/23 00:55, Rob Herring wrote:
> Device specific bindings should not allow undefined properties. This is
> accomplished in json-schema with 'additionalProperties: false'.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Applied to for-6.7. Thanks !

-- 
Damien Le Moal
Western Digital Research



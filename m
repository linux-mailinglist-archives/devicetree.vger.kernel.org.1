Return-Path: <devicetree+bounces-24742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A8C8110A0
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:57:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 612F028178B
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3F8D28DB5;
	Wed, 13 Dec 2023 11:57:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 33BD9EB;
	Wed, 13 Dec 2023 03:57:21 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D782C15;
	Wed, 13 Dec 2023 03:58:07 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9A1053F762;
	Wed, 13 Dec 2023 03:57:19 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] arm64: dts: juno: align thermal zone names with bindings
Date: Wed, 13 Dec 2023 11:57:13 +0000
Message-ID: <170246838542.3577011.6881453625869054003.b4-ty@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231209171612.250868-1-krzysztof.kozlowski@linaro.org>
References: <20231209171612.250868-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sat, 09 Dec 2023 18:16:12 +0100, Krzysztof Kozlowski wrote:
> Thermal bindings require thermal zone node names to match
> certain patterns:
>
>   juno.dtb: thermal-zones: 'big-cluster', 'gpu0', 'gpu1', 'little-cluster', 'pmic', 'soc'
>     do not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$', 'pinctrl-[0-9]+'
>
>
> [...]

Applied to sudeep.holla/linux (for-next/juno/updates), thanks!

[1/1] arm64: dts: juno: align thermal zone names with bindings
      https://git.kernel.org/sudeep.holla/c/fb4d25d7a33f

--
Regards,
Sudeep



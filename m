Return-Path: <devicetree+bounces-4906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2D47B4383
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 22:28:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C09091C2082C
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 20:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D616E18C19;
	Sat, 30 Sep 2023 20:28:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A289E156D8
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 20:28:19 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A22ADD;
	Sat, 30 Sep 2023 13:28:18 -0700 (PDT)
Received: from mercury (unknown [185.254.75.28])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 571DB6607295;
	Sat, 30 Sep 2023 21:28:17 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696105697;
	bh=92DkQyHS0PNt6RSf48WpmItGWQPcmIWdjNbW7Ztjv+I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=S4ADqFKP1/gg7NRYb93kcw/V5d/9BAF+E9HjydhXlU5OpaaLUlGGJMQq9eyrGjEQx
	 STteKj+SXUrsivSCBE9KwYOdU26cYVCq0OkVxAfQmuzU7AaPS7LX6j3STqZUyl2syx
	 glR99uFVPTfVlkZTmwHPd0vmgrAmisjV1qZ4ImZzNB1m07f4KUOrmU3Q1K/9ByO/Ih
	 gsgLkQ92N20KagXIXl1ueh3MTncSNhKjjzzaWfFTfy2YtsaSliOC4sNOqVSpMKDR69
	 +HZumZZ/o66roqexQDruDz+aDeUTYpgTAR2ekIVyQ/8L8XwhZPEakagJZqAUwFgxj3
	 0qvGJEI6fc+CQ==
Received: by mercury (Postfix, from userid 1000)
	id 26D6B10605D7; Sat, 30 Sep 2023 22:28:15 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230926164446.101327-1-robh@kernel.org>
References: <20230926164446.101327-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: power/supply: sbs-manager: Add missing
 unevaluatedProperties on child node schemas
Message-Id: <169610569514.214910.2987951622225757545.b4-ty@collabora.com>
Date: Sat, 30 Sep 2023 22:28:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Tue, 26 Sep 2023 11:44:42 -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
> 
> Add unevaluatedProperties as needed, and then add any missing properties
> flagged by the addition.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: power/supply: sbs-manager: Add missing unevaluatedProperties on child node schemas
      commit: 15a4e422f3c9b041261b6810c90ce09d4ebe2a14

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>



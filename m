Return-Path: <devicetree+bounces-10931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A8E7D3889
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 15:56:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18D78281577
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 13:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7DCF1B265;
	Mon, 23 Oct 2023 13:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBvOzI0O"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8BC11CAC
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 13:55:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5364C433C7;
	Mon, 23 Oct 2023 13:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698069359;
	bh=yY7128FTqOAVEE2hwQAdyTNyFxh3eCY8SsAjx1SS6aE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=fBvOzI0O488r6TEi17oJjyAQmZ+UR9Py5FcB5n2vajr/gcaOPqaxX7qOFksLV/V85
	 fjasd82I7K2qyP75iUh7EKUbGHwulm98UKkphZ6c94ELbK9yA5YiME5YrzfGBQF/+F
	 Cz1GDZp+6Th28B30W3mgjG5vkXUb7Yuy745dt+HRpo0Yy9V37VPp3xvKe9Q7Gmi9a2
	 uRRaMITaExe2MiCG17jVmwO0i5+v/qKmln6uyK8YPL0zRRYsrKQfrQUP7sxV74epRg
	 IWbs3ZeeM4TUxsfAheQnxbzSm9XV66xgbviHlVZ1WfRn5Y37XsMprB3jfir84NrQKN
	 pD9AppS8dfAKA==
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Rob Herring <robh@kernel.org>
In-Reply-To: <20231023131409.1796451-1-sebastian.reichel@collabora.com>
References: <20231023131409.1796451-1-sebastian.reichel@collabora.com>
Subject: Re: (subset) [PATCH v4] dt-bindings: mfd: max8925: Convert to DT
 schema format
Message-Id: <169806935666.159408.10545089566212045567.b4-ty@kernel.org>
Date: Mon, 23 Oct 2023 14:55:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Mon, 23 Oct 2023 15:12:20 +0200, Sebastian Reichel wrote:
> Convert the binding to DT schema format.
> 
> The sub-functions of this MFD device do not have their own compatible
> string and are thus described directly in the MFD binding document
> after being converted to YAML.
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: mfd: max8925: Convert to DT schema format
      commit: 34abc0252d1923cdf82c2352409df490253c8814

--
Lee Jones [李琼斯]



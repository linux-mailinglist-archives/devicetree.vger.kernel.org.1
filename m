Return-Path: <devicetree+bounces-1858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1E97A8A12
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:10:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD3612819D5
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 722E63E49A;
	Wed, 20 Sep 2023 17:10:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B553D399
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:10:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38006C433C7;
	Wed, 20 Sep 2023 17:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229807;
	bh=L5dipSB0QbCRhqx+MiTuajJzyrgEBRTz5u/dkrwFz3Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=exZrAPxvUxl+AwKrVp+aNuRKF6qbiUFdCeQdFkYwhep1uxyQoZGR9rEoyKkUeeWzg
	 FpwfOjNCD5BeTStymzFygw5S53MZxauqpywEK88bzetqNqqJUxuPBqSMmKTtyiG2oh
	 q3jz0ZSk9tTdqvvW5gvOaNbdaulSMo/PEk0WQyfej2b0oKTljwigwsI12BFmEnGo25
	 wXxweOOblq/zfSTI9jFGsb8AmQPqgd37vpM+fgPdS6VyUG41OUmqCWX6z97ZtWOntE
	 NcjR1miEx5nmsF64W68WlAO6tasjnfks/r06O2EDottwialrtFLFvsqI4EF5BYB/9n
	 mnphFW8XFi6Iw==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Danila Tikhonov <danila@jiaxyga.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: pm8150l: Add wled node
Date: Wed, 20 Sep 2023 10:13:56 -0700
Message-ID: <169523004973.2665018.13532332938289995058.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230913185514.21840-1-danila@jiaxyga.com>
References: <20230913185514.21840-1-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 13 Sep 2023 21:55:14 +0300, Danila Tikhonov wrote:
> WLED is used for controlling the backlight on some boards, add the node
> for it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: pm8150l: Add wled node
      commit: 4a94b52a47f63fb6db44871f446d31c28ca89bb9

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


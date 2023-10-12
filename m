Return-Path: <devicetree+bounces-8061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 177FC7C696D
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:25:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47CD61C20D62
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47B202110D;
	Thu, 12 Oct 2023 09:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsvPuBD/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA74210EA
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:25:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F379AC433C8;
	Thu, 12 Oct 2023 09:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697102718;
	bh=3o/uhFcS8U5My0ncKTRyBUAftV0QIu/f9pc+SI5HXpo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DsvPuBD/rrWE1AeYn7+5FE19/KcPiFkNJZziMK8YOEOxEwaE9TZmNJ1HUEUWtbT/A
	 zGFvS0SYWa0M0++LHJXso3yGv7Cc1pjLJ2ZvErmiTPbqFmUgynkCoKwz264n+4Ekww
	 ShAdotCHEWWArlh6+M+JWLxcQ2FGdNXYgnLsYQfMVQLbGvtMZHywDZB+UfWChtYTZX
	 KArKuldJtUcQ9AqXq/FhmKvTWpWCxH913X0Hb/prTKdCihKYrrlvv6e/puEDKf4hTn
	 DodPx9GlLL+VRgdL/0Apo1l+EfX+IpW8FcwueKSX432onFjnqPx3O8kJQC2jGHj3Tv
	 4HMfdd7rF+0oA==
From: Conor Dooley <conor@kernel.org>
To: kernel@esmil.dk,
	conor@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	william.qiu@starfivetech.com,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nam Cao <namcao@linutronix.de>
Cc: Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2] riscv: dts: starfive: visionfive 2: correct spi's ss pin
Date: Thu, 12 Oct 2023 10:24:18 +0100
Message-Id: <20231012-pointless-underpaid-649da93b1762@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231012091729.3fzfDD1I@linutronix.de>
References: <20231012091729.3fzfDD1I@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=363; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=DCkp2TXqDwPuDa0wCN1QofJuZaPRdyQxX+0vez7hCxE=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKnqux32OYa82eP9YBbPY1XuNY/ytLbnn7zco8WgML8v6 rl+8fXXHaUsDGIcDLJiiiyJt/tapNb/cdnh3PMWZg4rE8gQBi5OAZiI5X1GhvmvVv0Wcrghz5eY 9k/lZMzFDyt9a9dGzfm62qhN5+tHtX6Gv1KagSFWEf7f3oXsOcb+e8q9W/u+cHrnabzkaLt3RO9 AHjMA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Thu, 12 Oct 2023 11:17:29 +0200, Nam Cao wrote:
> The ss pin of spi0 is the same as sck pin. According to the
> visionfive 2 documentation, it should be pin 49 instead of 48.
> 
> 

Applied to riscv-dt-fixes, thanks!

[1/1] riscv: dts: starfive: visionfive 2: correct spi's ss pin
      https://git.kernel.org/conor/c/cf98fe6b579e

Thanks,
Conor.


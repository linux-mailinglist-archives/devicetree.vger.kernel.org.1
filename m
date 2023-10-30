Return-Path: <devicetree+bounces-12929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3595A7DBF16
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 18:36:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3EC5281520
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 17:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D191512E47;
	Mon, 30 Oct 2023 17:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFC6199BF
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 17:36:44 +0000 (UTC)
X-Greylist: delayed 440 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 30 Oct 2023 10:36:41 PDT
Received: from m-r1.th.seeweb.it (m-r1.th.seeweb.it [5.144.164.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAC78BD
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:36:41 -0700 (PDT)
Received: from [192.168.133.160] (178235177091.dynamic-4-waw-k-1-1-0.vectranet.pl [178.235.177.91])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r1.th.seeweb.it (Postfix) with ESMTPSA id 1CA072016C;
	Mon, 30 Oct 2023 18:29:15 +0100 (CET)
Message-ID: <aed5ddf8-8b78-4b63-9241-85b20c26b805@somainline.org>
Date: Mon, 30 Oct 2023 18:29:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 0/3] ASoC: codecs: Add aw88399 amplifier driver
To: wangweidong.a@awinic.com, lgirdwood@gmail.com, broonie@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 perex@perex.cz, tiwai@suse.com, herve.codina@bootlin.com,
 shumingf@realtek.com, rf@opensource.cirrus.com, arnd@arndb.de,
 13916275206@139.com, ryans.lee@analog.com, linus.walleij@linaro.org,
 ckeepax@opensource.cirrus.com, ajye_huang@compal.corp-partner.google.com,
 fido_max@inbox.ru, liweilei@awinic.com, yijiangtao@awinic.com,
 trix@redhat.com, colin.i.king@gmail.com, dan.carpenter@linaro.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025112625.959587-1-wangweidong.a@awinic.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@somainline.org>
In-Reply-To: <20231025112625.959587-1-wangweidong.a@awinic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 25.10.2023 13:26, wangweidong.a@awinic.com wrote:
> From: Weidong Wang <wangweidong.a@awinic.com>
> 
> Add the awinic,aw88399 property to the awinic,aw88395.yaml file.
> 
> Add i2c and amplifier registration for
> aw88399 and their associated operation functions.
Hi!

Just out of interest, do you folks have any plans to add support
for CHIP_ID 0x1852?

Konrad


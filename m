Return-Path: <devicetree+bounces-11709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D1B7D65F8
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7D951C208ED
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97C301F616;
	Wed, 25 Oct 2023 08:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E91A1F612
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:59:16 +0000 (UTC)
Received: from out28-194.mail.aliyun.com (out28-194.mail.aliyun.com [115.124.28.194])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63786B0;
	Wed, 25 Oct 2023 01:59:11 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.07707555|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0251605-0.000177189-0.974662;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047187;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=27;RT=27;SR=0;TI=SMTPD_---.V7kMlT4_1698224337;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.V7kMlT4_1698224337)
          by smtp.aliyun-inc.com;
          Wed, 25 Oct 2023 16:59:05 +0800
From: wangweidong.a@awinic.com
To: broonie@kernel.org
Cc: 13916275206@139.com,
	ajye_huang@compal.corp-partner.google.com,
	alsa-devel@alsa-project.org,
	arnd@arndb.de,
	ckeepax@opensource.cirrus.com,
	colin.i.king@gmail.com,
	conor+dt@kernel.org,
	dan.carpenter@linaro.org,
	devicetree@vger.kernel.org,
	harshit.m.mogalapalli@oracle.com,
	herve.codina@bootlin.com,
	krzysztof.kozlowski+dt@linaro.org,
	lgirdwood@gmail.com,
	linus.walleij@linaro.org,
	linux-kernel@vger.kernel.org,
	liweilei@awinic.com,
	perex@perex.cz,
	rf@opensource.cirrus.com,
	robh+dt@kernel.org,
	ryans.lee@analog.com,
	sebastian.reichel@collabora.com,
	shumingf@realtek.com,
	tiwai@suse.com,
	trix@redhat.com,
	wangweidong.a@awinic.com,
	yijiangtao@awinic.com
Subject: Re: [PATCH V2 3/4] ASoC: codecs: Add code for bin parsing compatible with aw88399
Date: Wed, 25 Oct 2023 16:58:56 +0800
Message-ID: <20231025085857.918695-1-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <06c14b04-28df-4374-80e3-91e40bc53a84@sirena.org.uk>
References: <06c14b04-28df-4374-80e3-91e40bc53a84@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Thank you very much for your help.

On Tue, Oct 24, 2023 at 14:57:03 +0100, Mark Brown wrote:
> On Tue, Oct 24, 2023 at 01:42:13PM +0100, Mark Brown wrote:
>> On Tue, Oct 24, 2023 at 03:19:28PM +0800, wangweidong.a@awinic.com wrote:
>> 
>> > I generated the patch based on the mainline branch, 
>> > Why would there be a conflict? I know that I made a change to
>> > this file when I committed aw87390 and that 
>> > the change was in the Linux-next branch, but the two 
>> > changes are in different parts of the file.
>> 
>> I don't know off hand, I didn't check in detail.  It's possible someone
>> else sent a fix that's been applied and is causing the issue - if you
>> check out my branch and try to apply the patches hopefully you can
>> figure out what the problem was.

> diff --cc sound/soc/codecs/aw88395/aw88395_lib.c
> index a0a429ca9768,bc72a7487048..000000000000
> --- a/sound/soc/codecs/aw88395/aw88395_lib.c
> +++ b/sound/soc/codecs/aw88395/aw88395_lib.c
> @@@ -705,7 -703,8 +705,12 @@@ static int aw_dev_load_cfg_by_hdr(struc
>  
>  	switch (aw_dev->chip_id) {
>  	case AW88395_CHIP_ID:
> ++<<<<<<< HEAD
> +		ret = aw88395_dev_cfg_get_valid_prof(aw_dev, all_prof_info);
> ++=======
> + 	case AW88399_CHIP_ID:
> + 		ret = aw88395_dev_cfg_get_valid_prof(aw_dev, *all_prof_info);
> ++>>>>>>> ASoC: codecs: Add code for bin parsing compatible with aw88399
>  		if (ret < 0)
>  			goto exit;
>  		break;

Again, thank you very much for your help. I'll resend the patch
based against for-6.7 of sound tree.

Best regards
Weidong Wang


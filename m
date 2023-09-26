Return-Path: <devicetree+bounces-3340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0030F7AE666
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 09:04:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id EBE761C2084A
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 07:04:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3598C525D;
	Tue, 26 Sep 2023 07:04:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9304A5224
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 07:04:54 +0000 (UTC)
Received: from out28-49.mail.aliyun.com (out28-49.mail.aliyun.com [115.124.28.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34296FB;
	Tue, 26 Sep 2023 00:04:48 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.1404606|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0212173-0.00065658-0.978126;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047193;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=27;RT=27;SR=0;TI=SMTPD_---.UogDhTS_1695711876;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.UogDhTS_1695711876)
          by smtp.aliyun-inc.com;
          Tue, 26 Sep 2023 15:04:45 +0800
From: wangweidong.a@awinic.com
To: broonie@kernel.org
Cc: 13916275206@139.com,
	alsa-devel@alsa-project.org,
	arnd@arndb.de,
	ckeepax@opensource.cirrus.com,
	colin.i.king@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	harshit.m.mogalapalli@oracle.com,
	herve.codina@bootlin.com,
	krzysztof.kozlowski+dt@linaro.org,
	lgirdwood@gmail.com,
	linus.walleij@linaro.org,
	linux-kernel@vger.kernel.org,
	liweilei@awinic.com,
	perex@perex.cz,
	povik+lin@cutebit.org,
	rf@opensource.cirrus.com,
	robh+dt@kernel.org,
	ryans.lee@analog.com,
	shumingf@realtek.com,
	tiwai@suse.com,
	trix@redhat.com,
	u.kleine-koenig@pengutronix.de,
	wangweidong.a@awinic.com,
	yang.lee@linux.alibaba.com,
	yijiangtao@awinic.com
Subject: Re: [PATCH V4 4/7] ASoC: codecs: Add code for bin parsing compatible with aw87390
Date: Tue, 26 Sep 2023 15:04:30 +0800
Message-ID: <20230926070436.486530-1-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <ZRGT2oLQaJBVVYFH@finisterre.sirena.org.uk>
References: <ZRGT2oLQaJBVVYFH@finisterre.sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Thank you very much for your review, but there's something I'd like to discuss with you

On Mon, Sep 25, 2023 at 16:06:18 +0200, broonie@kernel.org wrote:
> On Tue, Sep 19, 2023 at 06:57:21PM +0800, wangweidong.a@awinic.com wrote:
>> From: Weidong Wang <wangweidong.a@awinic.com>
>> 
>> Add aw87390 compatible code to the aw88395_lib.c file
>> so that it can parse aw87390's bin file
>> Modify the function return value

> This breaks an x86 allmodconfig build:

> /build/stage/linux/sound/soc/codecs/aw88395/aw88395.c: In function ‘aw88395_prof
> ile_info’:
> /build/stage/linux/sound/soc/codecs/aw88395/aw88395.c:199:21: error: too few arg
> uments to function ‘aw88395_dev_get_prof_name’
>  199 |         prof_name = aw88395_dev_get_prof_name(aw88395->aw_pa, count);
>      |                     ^~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from /build/stage/linux/sound/soc/codecs/aw88395/aw88395.c:17:
> /build/stage/linux/sound/soc/codecs/aw88395/aw88395_device.h:184:5: note: declar
> ed here
>  184 | int aw88395_dev_get_prof_name(struct aw_device *aw_dev, int index, char 
> **prof_name);
>      |     ^~~~~~~~~~~~~~~~~~~~~~~~~

I did not get this error when compiling base on "2cf0f715623872823a72e451243bbf555d10d032"
and the changes to this function are already in [patch V4 3/7]
Can you tell me how to modify it?

Best regards,
Weidong Wang



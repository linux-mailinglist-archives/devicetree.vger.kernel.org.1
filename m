Return-Path: <devicetree+bounces-8794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3765D7CA13A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 10:06:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BBAF5B20C03
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 08:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79D6E182C7;
	Mon, 16 Oct 2023 08:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D164E1802D
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 08:06:02 +0000 (UTC)
Received: from out28-218.mail.aliyun.com (out28-218.mail.aliyun.com [115.124.28.218])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B783DE;
	Mon, 16 Oct 2023 01:05:59 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.2612196|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_news_journal|0.0128076-0.000445282-0.986747;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047208;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=27;RT=27;SR=0;TI=SMTPD_---.V04MZU._1697443545;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.V04MZU._1697443545)
          by smtp.aliyun-inc.com;
          Mon, 16 Oct 2023 16:05:53 +0800
From: wangweidong.a@awinic.com
To: krzysztof.kozlowski@linaro.org
Cc: 13916275206@139.com,
	alsa-devel@alsa-project.org,
	arnd@arndb.de,
	broonie@kernel.org,
	ckeepax@opensource.cirrus.com,
	colin.i.king@gmail.com,
	conor+dt@kernel.org,
	dan.carpenter@linaro.org,
	devicetree@vger.kernel.org,
	fido_max@inbox.ru,
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
Subject: Re: [PATCH V1 3/3] ASoC: codecs: Add aw88399 amplifier driver
Date: Mon, 16 Oct 2023 16:05:44 +0800
Message-ID: <20231016080544.45778-1-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <37a2d2d1-5ede-4f88-b4e7-d9750336465d@linaro.org>
References: <37a2d2d1-5ede-4f88-b4e7-d9750336465d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Thank you very much for your review

On 13/10/2023 13:50, +200 krzysztof.kozlowski@linaro.org wrote:
> On 13/10/2023 12:42, wangweidong.a@awinic.com wrote:
>> From: Weidong Wang <wangweidong.a@awinic.com>
>> 
>> Add i2c and amplifier registration for
>> aw88399 and their associated operation functions.
>> 


>> +
>> +static void aw88399_hw_reset(struct aw88399 *aw88399)
>> +{
>> +	if (aw88399->reset_gpio) {
>> +		gpiod_set_value_cansleep(aw88399->reset_gpio, 0);
>> +		usleep_range(AW88399_1000_US, AW88399_1000_US + 10);
>> +		gpiod_set_value_cansleep(aw88399->reset_gpio, 1);

> Why do you leave the device in reset state? I think you wanted these
> reverted.

our chip is reset at low level, So I'll change it to
    gpiod_set_value_cansleep(aw88399->reset_gpio, 1);
	usleep_range(AW88399_1000_US, AW88399_1000_US + 10);
	gpiod_set_value_cansleep(aw88399->reset_gpio, 0);
	usleep_range(AW88399_1000_US, AW88399_1000_US + 10);
	gpiod_set_value_cansleep(aw88399->reset_gpio, 1);
Thanks again for your advice.

Best regards,
Weidong Wang


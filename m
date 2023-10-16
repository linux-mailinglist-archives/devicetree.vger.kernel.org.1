Return-Path: <devicetree+bounces-8797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8645E7CA153
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 10:10:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D3541F21C02
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 08:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1CF18624;
	Mon, 16 Oct 2023 08:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CC318623
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 08:10:36 +0000 (UTC)
Received: from out28-172.mail.aliyun.com (out28-172.mail.aliyun.com [115.124.28.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28A9EEB;
	Mon, 16 Oct 2023 01:10:31 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.07441231|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0174846-0.000237189-0.982278;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047209;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=26;RT=26;SR=0;TI=SMTPD_---.V04yDun_1697443818;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.V04yDun_1697443818)
          by smtp.aliyun-inc.com;
          Mon, 16 Oct 2023 16:10:26 +0800
From: wangweidong.a@awinic.com
To: broonie@kernel.org
Cc: 13916275206@139.com,
	alsa-devel@alsa-project.org,
	arnd@arndb.de,
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
Date: Mon, 16 Oct 2023 16:10:17 +0800
Message-ID: <20231016081017.46963-1-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <ZSlP8GvTAOe35peC@finisterre.sirena.org.uk>
References: <ZSlP8GvTAOe35peC@finisterre.sirena.org.uk>
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

On Fri, Oct 13, 2023 at 03:10:56 PM +0100, broonie@kernel.org wrote:
> On Fri, Oct 13, 2023 at 06:42:20PM +0800, wangweidong.a@awinic.com wrote:

> This looks good - some *very* minor comments below.

>> +static const struct regmap_config aw88399_remap_config = {
>> +	.val_bits = 16,
>> +	.reg_bits = 8,
>> +	.max_register = AW88399_REG_MAX - 1,

> I see this is already the case for the aw88261 driver but it is a bit
> weird that _REG_MAX isn't the maximum register - it looks like it should
> probably be _NUM_REG.  Not the end of the world though.

Thank you very much, I will modify it to ".max_register = AW88399_REG_MAX;"

>> +static int aw_dev_dsp_update_container(struct aw_device *aw_dev,
>> +			unsigned char *data, unsigned int len, unsigned short base)
>> +{
>> +	int i, ret;
>> +
>> +#ifdef AW88399_DSP_I2C_WRITES
>> +	u32 tmp_len;

> This looks like debug code which can hopefully be removed in favour of
> the regmap implementation?

Thank you very much, but this is not a debugging statement, This is designed
to be compatible with different platforms that may not support continuous
writing.

>> +static int aw88399_codec_probe(struct snd_soc_component *component)
>> +{
>> +	struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
>> +	struct aw88399 *aw88399 = snd_soc_component_get_drvdata(component);
>> +	int ret;
>> +
>> +	ret = aw88399_request_firmware_file(aw88399);
>> +	if (ret < 0) {
>> +		dev_err(aw88399->aw_pa->dev, "%s failed\n", __func__);
>> +		return ret;
>> +	}
>> +
>> +	INIT_DELAYED_WORK(&aw88399->start_work, aw88399_startup_work);
>> +
>> +	/* add widgets */
>> +	ret = snd_soc_dapm_new_controls(dapm, aw88399_dapm_widgets,
>> +							ARRAY_SIZE(aw88399_dapm_widgets));
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	/* add route */
>> +	ret = snd_soc_dapm_add_routes(dapm, aw88399_audio_map,
>> +							ARRAY_SIZE(aw88399_audio_map));
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	ret = snd_soc_add_component_controls(component, aw88399_controls,
>> +							ARRAY_SIZE(aw88399_controls));

> You should just be able to pass these arrays in the component strucutre?

Thank you very much. I will modify it

Best regards,
Weidong Wang


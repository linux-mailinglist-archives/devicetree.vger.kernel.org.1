Return-Path: <devicetree+bounces-269363-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHWDMqPPoWn3wQQAu9opvQ
	(envelope-from <devicetree+bounces-269363-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:08:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9081BB3A5
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:08:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC7CE311FFB2
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92DF935A391;
	Fri, 27 Feb 2026 17:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FLVeTTs/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8480F358D0E
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 17:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772211708; cv=pass; b=N6PhA9oJnoGutOZvjN5nUX0S0X+ARTCTsVTaHxCgQwHWmUiYxC+YMQ4xid7UQF9wFO9QNa7pCLy6kDT98uPNsqg2hlzbvMQLv8nquytjTGMkarxbzBaTrSfuVHPdrHKnZoJFARZtqbu3u4EaLXdf+AuXMpWFavrCfgKA40Sf/ag=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772211708; c=relaxed/simple;
	bh=ZIYRl3u7bmaLRT8SRm9rQ3lQCf0ntfMkORxThMWjq60=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aRHROGolOExjXivaSiRKNHOLHjQJrAPqr8jSRsT2cfRwajOd9eE8FfuSf4rTofbQ8WWwfhPI+6svUAVzvj51EnadRvXDjRn4Js7pFrSvzcmnDoCQn/vH9y+ZEFQGd2wh231asWNWGohonmfcBGROlXtE9W0io6tzlRC9oqZ9Gec=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FLVeTTs/; arc=pass smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-65c20dc9577so4177837a12.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 09:01:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772211705; cv=none;
        d=google.com; s=arc-20240605;
        b=cP18mFjuQhYsTUHsduroNbhfNoX2cdbRnHWESvfPneApcHPJbi2clK7o7KXaqAcvlW
         Pvkj5s//SwShi/MLC2mOc5geNPEEScOmrO5ylnDUptbuBubdtcphn+IG1eSJPNTJp7N3
         ML27GuqKgsaOv8xbu+mTCFqMQNwKT94grl+YKUdQYEWC54maTj2/R+k8pc1GB571Wij1
         KwKgKxdjygVijylKgZ6xi+HuX0kTjMCQ16KFhQYVpm1/slZpvjIRrgboRAVScb7rbAD2
         Zs5epbwudJDq98kqU8IjKy+arvdfUIab0kCKt+VxPmakreIjYaPY+8NlvypveyB5MOtQ
         SRCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CW5KUGgoFn5q9gXUzCWImq5omL1f1unPYVtcaICmZNk=;
        fh=7Au8mS/faYys+OL+h9RJKPMmwBmNeKwrT5iJ/WHQjW8=;
        b=T/4q7/gQ3WfR7jJsgq/fXtg/lCXInImQQYf4upExf2Cot89zvf8rgCxjHsmE5MPXJ/
         g0iwEimcrENyifCBFOfYpsVPdEwukA8tCYJw0hnnlSBRb4BM0bDm9jS6SV5c2Ply4iUA
         Q19QMBg9XT2kV8/icE7XhfdGqwPXdCzo0VK8V3UlNp5wwI18s4kemg4+PfDy4WoQf/Hr
         7TMN9oWgkXWZOw5he+JofQTY6OhgAwDLlDb7EuPF1AaV893BR6/x9kWs52PAZ87ArJwS
         m1fMhhbcDHr8hm6PJB5LHycKUFSI1/22hdKsmI4uBYQK+SRB+QGEQznsMRxh0kkFI84s
         Uiqg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772211705; x=1772816505; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CW5KUGgoFn5q9gXUzCWImq5omL1f1unPYVtcaICmZNk=;
        b=FLVeTTs/BboDTLBfA/su+JwV0Jr7c0Sxtv1LwXCn7RJeg2M+TcmZTlin3PRQSmhZLv
         gtcmGsXHbJbhJEqKYymGuXPPKuyIw8tUtf156eXBwhGLgO45WJdttCn6saSbJcAkAoZ8
         wfb6kYeS4tWRaiCw7rtdeV3E4vKFjXik/OuP1S9fPRwTDRnH0sqpy+c7VR5c+qofchbV
         veFmTALO7r6zhlc86UFGT3wXypu44pkIB7vpUV6/QUO0UuF0vl1GVvKVrYXuMJbaolr4
         zDL4yKLUTVB0L5em8ukwjzpXCNq+bHgV33YeNYbqV87GZ43nJubl1O/STV/KvXm0Ojk8
         TsdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772211705; x=1772816505;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CW5KUGgoFn5q9gXUzCWImq5omL1f1unPYVtcaICmZNk=;
        b=ksnL+TiHOiDiIBhIf61CA7p8gN4KtXtOM4QfopAF9tYpBq6FFfwdMmf3JHG9lF5JtU
         zTe11Hhl+iUr9alEMTnSTit/KA8MBlR0QMgoVh+Px3WfecqhlrzKtZE0EeCMJV3sGb4i
         5ySvyByB3sJuL4IO0ecQwAKUpHR+8INykdUbhJ4maC7MXqIaJjjWsjyNtuJ1x5h00tpZ
         Ibq/s660Mxjo+BbqUnLfiLePiNinaJnVeXCdn0Zyh7iNRbd52wQsUvwI9gK35NmWpnJj
         1Yoz4nXelLXaJh/D4tzsaGiYOTne9sA8ff3Mor4dL+LirxTAHjUx3AxOU4SmO51/cLBw
         TAug==
X-Forwarded-Encrypted: i=1; AJvYcCXWCjVIH0NNO5KK+cft3TM3e/5UsBAxCjrO6y3KjjuBCSyZz6B9+oMxD7Ugf1C+CQMZzuThlsbYZVMe@vger.kernel.org
X-Gm-Message-State: AOJu0YxnbqV7uX5SarUcPJflVNPN+r7radD2fMo5jxwUrnyjPeilM8iV
	G0wFmX02DNZQqY3rR6tQA2OBvahS5qpEaLlTEUhuKBWSVxUaNHsOPV9D9LCKPqN0yvTLh4wb5a0
	1kaYQCGFNY1KyH3m1MyAbkWGRn/+CzXOSqnlAwRhwJw==
X-Gm-Gg: ATEYQzxJ5Wk7TC40J7M99dLGbhBcWzVHan5bpsdDggkusx8CyxiTLp6wWDfFxfw6S1N
	kpL4rQJUNsK1nvtIruQ+DRXMPuVfxl+mH0sgX8p7MCbBGgAkIv23roQzRjQ0q6uTHigka2DTvLW
	POsUU0Q30k4bksVU5GyWUGjWvZ+Srm8f9UZnqs0ekEpJ+U9KIumGghyW3lms2z5sB1Fow6HWEaZ
	5MZPIDdB5fsCPbxJjhxMxA5vfFoE1PoG4l40E/PdswmfYFJ3loZv9ypXS9JOaP2Ytga5dFxokmy
	lCu34GpZPessaXpZhJi+Ew==
X-Received: by 2002:a05:6402:270a:b0:65b:a76d:6fe5 with SMTP id
 4fb4d7f45d1cf-65fde4c9357mr2418868a12.30.1772211704672; Fri, 27 Feb 2026
 09:01:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org> <20260227-max77759-fg-v2-10-e50be5f191f0@linaro.org>
In-Reply-To: <20260227-max77759-fg-v2-10-e50be5f191f0@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 27 Feb 2026 17:01:33 +0000
X-Gm-Features: AaiRm50je7Jyz9A7BguKdOxcDEnGvNXfC21AHwJKgBl8f23M-dLNvVvogDhwjVc
Message-ID: <CADrjBPrqmyZGNVzV2Qk3yLqG2CLQi0J=rD4vHP9N1ftjDV8UOg@mail.gmail.com>
Subject: Re: [PATCH v2 10/11] power: supply: max17042: consider task period (max77759)
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, 
	Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, Purism Kernel Team <kernel@puri.sm>, 
	Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269363-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2F9081BB3A5
X-Rspamd-Action: no action

On Fri, 27 Feb 2026 at 07:15, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> Several (register) values reported by the fuel gauge depend on its
> internal task period and it needs to be taken into account when
> calculating results. All relevant example formulas in the data sheet
> assume the default task period (of 5760) and final results need to be
> adjusted based on the task period in effect.
>
> Update the code as and where necessary.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

> While I do believe this should apply to all devices supported by this
> driver, given the register description in max17042_battery.h, I've made
> this change specific to max77759, as I have no way to confirm this
> works as expected on those. I've found a data sheet for
> max17047/max17050 online, which does describe the relevant register
> 0x3c as 'reserved', hence I'm a bit hesitant to enable this for all.
>
> v2:
> * update commit message subject prefix
> ---
>  drivers/power/supply/max17042_battery.c | 20 ++++++++++++++++++++
>  include/linux/power/max17042_battery.h  |  1 +
>  2 files changed, 21 insertions(+)
>
> diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supp=
ly/max17042_battery.c
> index 44626abdab34..89909b140cf9 100644
> --- a/drivers/power/supply/max17042_battery.c
> +++ b/drivers/power/supply/max17042_battery.c
> @@ -61,6 +61,7 @@ struct max17042_chip {
>         struct work_struct work;
>         int    init_complete;
>         int    irq;
> +       int    task_period;
>  };
>
>  static enum power_supply_property max17042_battery_props[] =3D {
> @@ -335,6 +336,8 @@ static int max17042_get_property(struct power_supply =
*psy,
>                         return ret;
>
>                 data64 =3D data * 5000000ll;
> +               data64 *=3D chip->task_period;
> +               do_div(data64, MAX17042_DEFAULT_TASK_PERIOD);
>                 do_div(data64, chip->pdata->r_sns);
>                 val->intval =3D data64;
>                 break;
> @@ -344,6 +347,8 @@ static int max17042_get_property(struct power_supply =
*psy,
>                         return ret;
>
>                 data64 =3D data * 5000000ll;
> +               data64 *=3D chip->task_period;
> +               do_div(data64, MAX17042_DEFAULT_TASK_PERIOD);
>                 do_div(data64, chip->pdata->r_sns);
>                 val->intval =3D data64;
>                 break;
> @@ -353,6 +358,8 @@ static int max17042_get_property(struct power_supply =
*psy,
>                         return ret;
>
>                 data64 =3D data * 5000000ll;
> +               data64 *=3D chip->task_period;
> +               do_div(data64, MAX17042_DEFAULT_TASK_PERIOD);
>                 do_div(data64, chip->pdata->r_sns);
>                 val->intval =3D data64;
>                 break;
> @@ -362,6 +369,8 @@ static int max17042_get_property(struct power_supply =
*psy,
>                         return ret;
>
>                 data64 =3D sign_extend64(data, 15) * 5000000ll;
> +               data64 *=3D chip->task_period;
> +               data64 =3D div_s64(data64, MAX17042_DEFAULT_TASK_PERIOD);
>                 val->intval =3D div_s64(data64, chip->pdata->r_sns);
>                 break;
>         case POWER_SUPPLY_PROP_TEMP:
> @@ -1146,6 +1155,17 @@ static int max17042_probe(struct i2c_client *clien=
t, struct device *dev, int irq
>                 regmap_write(chip->regmap, MAX17042_LearnCFG, 0x0007);
>         }
>
> +       chip->task_period =3D MAX17042_DEFAULT_TASK_PERIOD;
> +       if (chip->chip_type =3D=3D MAXIM_DEVICE_TYPE_MAX77759) {
> +               ret =3D regmap_read(chip->regmap, MAX17042_TaskPeriod, &v=
al);
> +               if (ret)
> +                       return dev_err_probe(dev, ret,
> +                                            "failed to read task period\=
n");
> +               chip->task_period =3D val;
> +       }
> +       dev_dbg(dev, "task period: %#.4x (%d)\n", chip->task_period,
> +               chip->task_period);
> +
>         chip->battery =3D devm_power_supply_register(dev, max17042_desc,
>                                                    &psy_cfg);
>         if (IS_ERR(chip->battery))
> diff --git a/include/linux/power/max17042_battery.h b/include/linux/power=
/max17042_battery.h
> index 05097f08ea36..d5b08313cf11 100644
> --- a/include/linux/power/max17042_battery.h
> +++ b/include/linux/power/max17042_battery.h
> @@ -17,6 +17,7 @@
>  #define MAX17042_DEFAULT_VMAX          (4500) /* LiHV cell max */
>  #define MAX17042_DEFAULT_TEMP_MIN      (0)    /* For sys without temp se=
nsor */
>  #define MAX17042_DEFAULT_TEMP_MAX      (700)  /* 70 degrees Celcius */
> +#define MAX17042_DEFAULT_TASK_PERIOD   (5760)
>
>  /* Consider RepCap which is less then 10 units below FullCAP full */
>  #define MAX17042_FULL_THRESHOLD                10
>
> --
> 2.53.0.473.g4a7958ca14-goog
>


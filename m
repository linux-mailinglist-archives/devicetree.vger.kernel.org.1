Return-Path: <devicetree+bounces-103624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5071297B926
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 10:19:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7329E1C22854
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 08:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FE07194C8F;
	Wed, 18 Sep 2024 08:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="DIWtnZCx"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE63B194AD5;
	Wed, 18 Sep 2024 08:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726647218; cv=none; b=eihsV7IaQM1bbx82wc6SvWoPhiBdH/j3fCWBsxClMy2Iqsb/BiO+wvDvxHA/vHah1e8sE4rsaLfwlkVT7sW8tlj/yXXO72CjuDY0o9bBaKtpDqGkxoyN+Dj1EGymUCiQfkJjgKyZAGm5AR5bvmw69DLIt7CULUeni+LMyVsvZD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726647218; c=relaxed/simple;
	bh=p0+VNGdg624vh0TVucMBmvLTzv+B9s9iAXAJz67L3a4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s6V85/KWSJUyH20GkPXKJRk9y3GLKLgYftaCrag7vrdgFZrcxO8PJuhpqQNZswo/LwEWT3DgCVuOd8cPL/LZ0Nrdu9Mg1Ajaq2+fvy8kOrIPhXglwGWqL9VQyo28r4Wtn9Q4EflXJXruPjYUbyp6vTJKlWbJ3MYHh78P3hty5Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=DIWtnZCx; arc=none smtp.client-ip=220.197.31.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:
	Content-Type; bh=HExARYwQxEimoTdw9gpUMnKEEbHm5ZJTXTSTMk9kBI8=;
	b=DIWtnZCxOAQJOV00/XPIysMoYuZtgqzHx5nm9j3JfDSzWHwM7RpdV6Y/Wo3k9/
	Tr1T6/RYugMmept7NV+NUwKuWhGL10WIV/YLS5GyvBcMM+vOHlrbaQTw67R8TR4N
	sTS20HGKWtaEcnalr06NNR7m2K8ZvBsM6nYiUnpVJV4dg=
Received: from [192.168.31.242] (unknown [27.18.168.209])
	by gzga-smtp-mta-g3-2 (Coremail) with SMTP id _____wD3v+AAi+pmGsLKJg--.9338S2;
	Wed, 18 Sep 2024 16:10:43 +0800 (CST)
Message-ID: <f1e2ee2c-c54c-4c6b-bcee-0e41687eb9c2@163.com>
Date: Wed, 18 Sep 2024 16:10:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH 2/3] pinctrl: canaan: Add support for k230 SoC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Yangyu Chen <cyy@cyyself.name>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20240916063021.311721-1-18771902331@163.com>
 <20240916064706.318793-1-18771902331@163.com>
 <1488e936-d906-41d7-ae97-ffdbcc53b08c@linaro.org>
Content-Language: en-US
From: Ze Huang <18771902331@163.com>
In-Reply-To: <1488e936-d906-41d7-ae97-ffdbcc53b08c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CM-TRANSID:_____wD3v+AAi+pmGsLKJg--.9338S2
X-Coremail-Antispam: 1Uf129KBjvAXoW3tw4rtF1rWw4fAr4fZw18Krg_yoW8Ww15Go
	WSgwn2qw48Jr17WrW5J3s5KF13Zw4jkF1DCFn8ZwnxC3WUt3WYgrsrX3yrGFZYgF4xXrWx
	Jas3XFW7Aaykt3W5n29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73VFW2AGmfu7bjvjm3
	AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUbyCGUUUUU
X-CM-SenderInfo: zpryllqrzqjjitr6il2tof0z/1tbiUQdeomXAklc8pgAAsQ

On 9/16/24 11:58 PM, Krzysztof Kozlowski wrote:
> On 16/09/2024 08:47, Ze Huang wrote:
>> Configuration of the K230 is similar to that of the K210. However, in K210,
>> the 256 functions for each pin are shared, whereas in K230, multiplex
>> functions are different for every pin.
>>
>> Signed-off-by: Ze Huang <18771902331@163.com>
>> ---
>>   drivers/pinctrl/Kconfig        |  10 +
>>   drivers/pinctrl/Makefile       |   1 +
>>   drivers/pinctrl/pinctrl-k230.c | 674 +++++++++++++++++++++++++++++++++
>>   3 files changed, 685 insertions(+)
>>   create mode 100644 drivers/pinctrl/pinctrl-k230.c
> ...
>
>> +
>> +struct k230_pinctrl {
>> +	struct pinctrl_desc	pctl;
>> +	struct pinctrl_dev	*pctl_dev;
>> +	struct regmap		*regmap_base;
>> +	void __iomem		*base;
>> +	struct k230_pin_group	*groups;
>> +	unsigned int		ngroups;
>> +	struct k230_pmx_func	*functions;
>> +	unsigned int		nfunctions;
>> +};
>> +
>> +static struct regmap_config k230_regmap_config = {
> Why is this not a const?

Will move definition of 'name' here and set to const.

>
>> +	.reg_bits	= 32,
>> +	.val_bits	= 32,
>> +	.max_register	= 0x100,
>> +	.reg_stride	= 4,
>> +};
>> +
>> +static int k230_get_groups_count(struct pinctrl_dev *pctldev)
>> +{
>> +	struct k230_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
>> +
>> +	return info->ngroups;
>> +}
>> +
>> +static const char *k230_get_group_name(struct pinctrl_dev *pctldev,
>> +				       unsigned int selector)
>> +{
>> +	struct k230_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
>> +
>> +	return info->groups[selector].name;
>> +}
>> +
>> +static int k230_get_group_pins(struct pinctrl_dev *pctldev,
>> +			       unsigned int selector,
>> +			       const unsigned int **pins,
>> +			       unsigned int *num_pins)
>> +{
>> +	struct k230_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
>> +
>> +	if (selector >= info->ngroups)
>> +		return -EINVAL;
>> +
>> +	*pins = info->groups[selector].pins;
>> +	*num_pins = info->groups[selector].num_pins;
>> +
>> +	return 0;
>> +}
>> +
>> +static inline const struct k230_pmx_func *k230_name_to_funtion(
>> +		const struct k230_pinctrl *info, const char *name)
>> +{
>> +	unsigned int i;
>> +
>> +	for (i = 0; i < info->nfunctions; i++) {
>> +		if (!strcmp(info->functions[i].name, name))
>> +			return &info->functions[i];
>> +	}
>> +
>> +	return NULL;
>> +}
>> +
>> +static int k230_pinctrl_parse_groups(struct device_node *np,
>> +				     struct k230_pin_group *grp,
>> +				     struct k230_pinctrl *info,
>> +				     unsigned int index)
>> +{
>> +	struct device *dev = info->pctl_dev->dev;
>> +	const __be32 *list;
>> +	int size, i, ret;
>> +
>> +	grp->name = np->name;
>> +
>> +	list = of_get_property(np, "pinmux", &size);
>> +	size /= sizeof(*list);
>> +
>> +	grp->num_pins = size;
>> +	grp->pins = devm_kcalloc(dev, grp->num_pins, sizeof(*grp->pins),
>> +				 GFP_KERNEL);
>> +	grp->data = devm_kcalloc(dev, grp->num_pins, sizeof(*grp->data),
>> +				 GFP_KERNEL);
>> +	if (!grp->pins || !grp->data)
>> +		return -ENOMEM;
>> +
>> +	for (i = 0; i < size; i++) {
>> +		unsigned int mux_data = be32_to_cpu(*list++);
>> +
>> +		grp->pins[i] = (mux_data >> 8);
>> +		grp->data[i].func = (mux_data & 0xff);
>> +
>> +		ret = pinconf_generic_parse_dt_config(np, NULL,
>> +						      &grp->data[i].configs,
>> +						      &grp->data[i].nconfigs);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +	of_node_put(np);
>> +
> This looks like double free. There is no get in this scope.

Thanks for pointing that out. 'np' would be released by the caller. Will 
remove
`of_node_put()` here.

>> +	return 0;
>> +}
>> +
>> +static void k230_pinctrl_child_count(struct k230_pinctrl *info,
>> +				     struct device_node *np)
>> +{
>> +	struct device_node *child;
>> +
>> +	for_each_child_of_node(np, child) {
>> +		info->nfunctions++;
>> +		info->ngroups += of_get_child_count(child);
>> +	}
>> +}
>> +
>> +static int k230_pinctrl_parse_functions(struct device_node *np,
>> +					struct k230_pinctrl *info,
>> +					unsigned int index)
>> +{
>> +	struct device *dev = info->pctl_dev->dev;
>> +	struct k230_pmx_func *func;
>> +	struct k230_pin_group *grp;
>> +	struct device_node *child;
>> +	static unsigned int idx, i;
>> +	int ret;
>> +
>> +	func = &info->functions[index];
>> +
>> +	func->name = np->name;
>> +	func->ngroups = of_get_child_count(np);
>> +	if (func->ngroups <= 0)
>> +		return 0;
>> +
>> +	func->groups = devm_kcalloc(dev, func->ngroups,
>> +				    sizeof(*func->groups), GFP_KERNEL);
>> +	func->group_idx = devm_kcalloc(dev, func->ngroups,
>> +				       sizeof(*func->group_idx), GFP_KERNEL);
>> +	if (!func->groups || !func->group_idx)
>> +		return -ENOMEM;
>> +
>> +	i = 0;
>> +
>> +	for_each_child_of_node(np, child) {
>> +		func->groups[i] = child->name;
>> +		func->group_idx[i] = idx;
>> +		grp = &info->groups[idx];
>> +		idx++;
>> +		ret = k230_pinctrl_parse_groups(child, grp, info, i++);
>> +		if (ret) {
>> +			of_node_put(child);
> Use scoped loop instead.

OK, will use `for_each_child_of_node_scoped` instead.

>
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int k230_pinctrl_parse_dt(struct platform_device *pdev,
>> +				 struct k230_pinctrl *info)
> Please keep all probe related code next to each other. That's quite
> confusing to find probe code far away from the probe().

Noted, will do.

>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct device_node *np = dev->of_node;
>> +	struct device_node *child;
>> +	unsigned int i;
>> +	int ret;
>> +
>> +	k230_pinctrl_child_count(info, np);
>> +
>> +	info->functions = devm_kcalloc(dev, info->nfunctions,
>> +				       sizeof(*info->functions), GFP_KERNEL);
>> +	info->groups = devm_kcalloc(dev, info->ngroups,
>> +				    sizeof(*info->groups), GFP_KERNEL);
>> +	if (!info->functions || !info->groups)
>> +		return -ENOMEM;
>> +
>> +	i = 0;
>> +
>> +	for_each_child_of_node(np, child) {
>> +		ret = k230_pinctrl_parse_functions(child, info, i++);
>> +		if (ret) {
>> +			dev_err(dev, "failed to parse function\n");
>> +			of_node_put(child);
> Use scoped loop instead.

Will use `for_each_child_of_node_scoped` instead.

>> +			return ret;
>> +		}
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static struct pinctrl_pin_desc k230_pins[] = {
> Why is this not a const?

Field `drv_data` was used to point to currently activated group, which would
be updated in `set_mux()`. It was used to print the name of the current
function of pin in `k230_pinctrl_pin_dbg_show()`.

>> +	PINCTRL_PIN(0,  "IO0"),  PINCTRL_PIN(1,  "IO1"),  PINCTRL_PIN(2,  "IO2"),
>> +	PINCTRL_PIN(3,  "IO3"),  PINCTRL_PIN(4,  "IO4"),  PINCTRL_PIN(5,  "IO5"),
>> +	PINCTRL_PIN(6,  "IO6"),  PINCTRL_PIN(7,  "IO7"),  PINCTRL_PIN(8,  "IO8"),
>> +	PINCTRL_PIN(9,  "IO9"),  PINCTRL_PIN(10, "IO10"), PINCTRL_PIN(11, "IO11"),
>> +	PINCTRL_PIN(12, "IO12"), PINCTRL_PIN(13, "IO13"), PINCTRL_PIN(14, "IO14"),
>> +	PINCTRL_PIN(15, "IO15"), PINCTRL_PIN(16, "IO16"), PINCTRL_PIN(17, "IO17"),
>> +	PINCTRL_PIN(18, "IO18"), PINCTRL_PIN(19, "IO19"), PINCTRL_PIN(20, "IO20"),
>> +	PINCTRL_PIN(21, "IO21"), PINCTRL_PIN(22, "IO22"), PINCTRL_PIN(23, "IO23"),
>> +	PINCTRL_PIN(24, "IO24"), PINCTRL_PIN(25, "IO25"), PINCTRL_PIN(26, "IO26"),
>> +	PINCTRL_PIN(27, "IO27"), PINCTRL_PIN(28, "IO28"), PINCTRL_PIN(29, "IO29"),
>> +	PINCTRL_PIN(30, "IO30"), PINCTRL_PIN(31, "IO31"), PINCTRL_PIN(32, "IO32"),
>> +	PINCTRL_PIN(33, "IO33"), PINCTRL_PIN(34, "IO34"), PINCTRL_PIN(35, "IO35"),
>> +	PINCTRL_PIN(36, "IO36"), PINCTRL_PIN(37, "IO37"), PINCTRL_PIN(38, "IO38"),
>> +	PINCTRL_PIN(39, "IO39"), PINCTRL_PIN(40, "IO40"), PINCTRL_PIN(41, "IO41"),
>> +	PINCTRL_PIN(42, "IO42"), PINCTRL_PIN(43, "IO43"), PINCTRL_PIN(44, "IO44"),
>> +	PINCTRL_PIN(45, "IO45"), PINCTRL_PIN(46, "IO46"), PINCTRL_PIN(47, "IO47"),
>> +	PINCTRL_PIN(48, "IO48"), PINCTRL_PIN(49, "IO49"), PINCTRL_PIN(50, "IO50"),
>> +	PINCTRL_PIN(51, "IO51"), PINCTRL_PIN(52, "IO52"), PINCTRL_PIN(53, "IO53"),
>> +	PINCTRL_PIN(54, "IO54"), PINCTRL_PIN(55, "IO55"), PINCTRL_PIN(56, "IO56"),
>> +	PINCTRL_PIN(57, "IO57"), PINCTRL_PIN(58, "IO58"), PINCTRL_PIN(59, "IO59"),
>> +	PINCTRL_PIN(60, "IO60"), PINCTRL_PIN(61, "IO61"), PINCTRL_PIN(62, "IO62"),
>> +	PINCTRL_PIN(63, "IO63")
>> +};
>> +
>> +static void k230_pinctrl_pin_dbg_show(struct pinctrl_dev *pctldev,
>> +				      struct seq_file *s, unsigned int offset)
>> +{
>> +	struct k230_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
>> +	u32 val, mode, bias, drive, input, output, slew, schmitt, power;
>> +	struct k230_pin_group *grp = k230_pins[offset].drv_data;
>> +	static const char * const biasing[] = {
>> +			"pull none", "pull down", "pull up", "" };
>> +	static const char * const enable[] = {
>> +			"disable", "enable" };
>> +	static const char * const power_source[] = {
>> +			"3V3", "1V8" };
>> +	int ret;
>> +
>> +	ret = regmap_read(info->regmap_base, offset * 4, &val);
>> +	if (ret) {
>> +		dev_err(info->pctl_dev->dev,
>> +			"failed to read offset 0x%x\n", offset * 4);
>> +		return;
>> +	}
>> +
>> +	mode	= (val & K230_PC_SEL) >> K230_SHIFT_SEL;
>> +	drive	= (val & K230_PC_DS) >> K230_SHIFT_DS;
>> +	bias	= (val & K230_PC_BIAS) >> K230_SHIFT_BIAS;
>> +	input	= (val & K230_PC_IE) >> K230_SHIFT_IE;
>> +	output	= (val & K230_PC_OE) >> K230_SHIFT_OE;
>> +	slew	= (val & K230_PC_SL) >> K230_SHIFT_SL;
>> +	schmitt	= (val & K230_PC_ST) >> K230_SHIFT_ST;
>> +	power	= (val & K230_PC_MSC) >> K230_SHIFT_MSC;
>> +
>> +	seq_printf(s, "%s - strength %d - %s - %s - slewrate %s - schmitt %s - %s",
>> +		   grp ? grp->name : "unknown",
>> +		   drive,
>> +		   biasing[bias],
>> +		   input ? "input" : "output",
>> +		   enable[slew],
>> +		   enable[schmitt],
>> +		   power_source[power]);
>> +}
>> +
>> +static int k230_dt_node_to_map(struct pinctrl_dev *pctldev,
>> +			       struct device_node *np_config,
>> +			       struct pinctrl_map **map,
>> +			       unsigned int *num_maps)
>> +{
>> +	struct k230_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
>> +	struct device *dev = info->pctl_dev->dev;
>> +	const struct k230_pmx_func *func;
>> +	const struct k230_pin_group *grp;
>> +	struct pinctrl_map *new_map;
>> +	int map_num, i, j, idx;
>> +	unsigned int grp_id;
>> +
>> +	func = k230_name_to_funtion(info, np_config->name);
>> +	if (!func) {
>> +		dev_err(dev, "function %s not found\n", np_config->name);
>> +		return -EINVAL;
>> +	}
>> +
>> +	map_num = 0;
>> +	for (i = 0; i < func->ngroups; ++i) {
>> +		grp_id = func->group_idx[i];
>> +		/* npins of config map plus a mux map */
>> +		map_num += info->groups[grp_id].num_pins + 1;
>> +	}
>> +
>> +	new_map = kcalloc(map_num, sizeof(*new_map), GFP_KERNEL);
>> +	if (!new_map)
>> +		return -ENOMEM;
>> +	*map = new_map;
>> +	*num_maps = map_num;
>> +
>> +	idx = 0;
>> +	for (i = 0; i < func->ngroups; ++i) {
>> +		grp_id = func->group_idx[i];
>> +		grp = &info->groups[grp_id];
>> +		new_map[idx].type = PIN_MAP_TYPE_MUX_GROUP;
>> +		new_map[idx].data.mux.group = grp->name;
>> +		new_map[idx].data.mux.function = np_config->name;
>> +		idx++;
>> +
>> +		for (j = 0; j < grp->num_pins; ++j) {
>> +			new_map[idx].type = PIN_MAP_TYPE_CONFIGS_PIN;
>> +			new_map[idx].data.configs.group_or_pin =
>> +				pin_get_name(pctldev, grp->pins[j]);
>> +			new_map[idx].data.configs.configs =
>> +				grp->data[j].configs;
>> +			new_map[idx].data.configs.num_configs =
>> +				grp->data[j].nconfigs;
>> +			idx++;
>> +		}
>> +	}
>> +
>> +	return 0;
>> +}
> ...
>
>> +
>> +	ret = regmap_write(info->regmap_base, pin * 4, val);
>> +	if (ret) {
>> +		dev_err(dev, "failed to write offset 0x%x\n", pin * 4);
> Isn't regmap an MMIO? If so, drop all of such messages. This just makes
> unlikely error paths too big.

Acknowledged. Will drop them.

>> +		return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int k230_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
>> +			    unsigned long *configs, unsigned int num_configs)
>> +{
>> +	enum pin_config_param param;
>> +	unsigned int arg, i;
>> +	int ret;
>> +
>> +	if (WARN_ON(pin >= K230_NPINS))
> Drop WARN_ON. No need to panic kernel. Instead, handle correctly the error.

Acknowledged. Will use dev_err instead.

>> +		return -EINVAL;
>> +
>> +	for (i = 0; i < num_configs; i++) {
>> +		param = pinconf_to_config_param(configs[i]);
>> +		arg = pinconf_to_config_argument(configs[i]);
>> +		ret = k230_pinconf_set_param(pctldev, pin, param, arg);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static void k230_pconf_dbg_show(struct pinctrl_dev *pctldev,
>> +				struct seq_file *s, unsigned int pin)
>> +{
>> +	struct k230_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
>> +	unsigned int val;
>> +	int ret;
>> +
>> +	ret = regmap_read(info->regmap_base, pin * 4, &val);
>> +	if (ret) {
>> +		dev_err(info->pctl_dev->dev, "failed to read offset 0x%x\n", pin * 4);
>> +		return;
>> +	}
>> +
>> +	seq_printf(s, " 0x%08x", val);
>> +}
>> +
>> +static const struct pinconf_ops k230_pinconf_ops = {
>> +	.is_generic		= true,
>> +	.pin_config_get		= k230_pinconf_get,
>> +	.pin_config_set		= k230_pinconf_set,
>> +	.pin_config_dbg_show	= k230_pconf_dbg_show,
>> +};
>> +
>> +static int k230_get_functions_count(struct pinctrl_dev *pctldev)
>> +{
>> +	struct k230_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
>> +
>> +	return info->nfunctions;
>> +}
>> +
>> +static const char *k230_get_fname(struct pinctrl_dev *pctldev,
>> +				  unsigned int selector)
>> +{
>> +	struct k230_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
>> +
>> +	return info->functions[selector].name;
>> +}
>> +
>> +static int k230_get_groups(struct pinctrl_dev *pctldev, unsigned int selector,
>> +			   const char * const **groups, unsigned int *num_groups)
>> +{
>> +	struct k230_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
>> +
>> +	*groups = info->functions[selector].groups;
>> +	*num_groups = info->functions[selector].ngroups;
>> +
>> +	return 0;
>> +}
>> +
>> +static int k230_set_mux(struct pinctrl_dev *pctldev, unsigned int selector,
>> +			unsigned int group)
>> +{
>> +	struct k230_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
>> +	const struct k230_pin_conf *data = info->groups[group].data;
>> +	struct k230_pin_group *grp = &info->groups[group];
>> +	const unsigned int *pins = grp->pins;
>> +	struct regmap *regmap;
>> +	unsigned int value, mask;
>> +	int cnt, reg;
>> +
>> +	regmap = info->regmap_base;
>> +
>> +	for (cnt = 0; cnt < grp->num_pins; cnt++) {
>> +		reg = pins[cnt] * 4;
>> +		value = data[cnt].func << K230_SHIFT_SEL;
>> +		mask = K230_PC_SEL;
>> +		regmap_update_bits(regmap, reg, mask, value);
>> +		k230_pins[pins[cnt]].drv_data = grp;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct pinmux_ops k230_pmxops = {
>> +	.get_functions_count	= k230_get_functions_count,
>> +	.get_function_name	= k230_get_fname,
>> +	.get_function_groups	= k230_get_groups,
>> +	.set_mux		= k230_set_mux,
>> +	.strict			= true,
>> +};
>> +
>> +static int k230_pinctrl_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct k230_pinctrl *info;
>> +	struct pinctrl_desc *pctl;
>> +
>> +	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
>> +	if (!info)
>> +		return -ENOMEM;
>> +
>> +	pctl = &info->pctl;
>> +
>> +	pctl->name	= "k230-pinctrl";
>> +	pctl->owner	= THIS_MODULE;
>> +	pctl->pins	= k230_pins;
>> +	pctl->npins	= ARRAY_SIZE(k230_pins);
>> +	pctl->pctlops	= &k230_pctrl_ops;
>> +	pctl->pmxops	= &k230_pmxops;
>> +	pctl->confops	= &k230_pinconf_ops;
>> +
>> +	info->base = devm_platform_ioremap_resource(pdev, 0);
>> +	if (IS_ERR(info->base))
>> +		return PTR_ERR(info->base);
>> +
>> +	k230_regmap_config.name = "canaan,pinctrl";
> Why this is not part of definition?

Will move to definition and set regmap to const.

>> +	info->regmap_base = devm_regmap_init_mmio(dev, info->base,
>> +						  &k230_regmap_config);
>> +	if (IS_ERR(info->regmap_base))
>> +		return dev_err_probe(dev, PTR_ERR(info->regmap_base),
>> +				     "failed to init regmap\n");
>> +
>> +	info->pctl_dev = devm_pinctrl_register(dev, pctl, info);
>> +	if (IS_ERR(info->pctl_dev))
>> +		return dev_err_probe(dev, PTR_ERR(info->pctl_dev),
>> +				     "devm_pinctrl_register failed\n");
>> +
>> +	k230_pinctrl_parse_dt(pdev, info);
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct of_device_id k230_dt_ids[] = {
>> +	{ .compatible = "canaan,k230-pinctrl", },
>> +	{ /* sintenel */ }
>> +};
>> +MODULE_DEVICE_TABLE(of, k230_dt_ids);
>> +
>> +static struct platform_driver k230_pinctrl_driver = {
>> +	.probe = k230_pinctrl_probe,
>> +	.driver = {
>> +		.name = "k230-pinctrl",
>> +		.of_match_table = k230_dt_ids,
>> +	},
>> +};
>> +module_platform_driver(k230_pinctrl_driver);
>> +
>> +MODULE_LICENSE("GPL");
>> +MODULE_AUTHOR("Ze Huang <18771902331@163.com>");
>> +MODULE_DESCRIPTION("Canaan K230 pinctrl driver");
> Best regards,
> Krzysztof



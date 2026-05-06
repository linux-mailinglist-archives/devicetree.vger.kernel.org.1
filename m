Return-Path: <devicetree+bounces-293361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id y++FEyGx+mlIRwMAu9opvQ
	(envelope-from <devicetree+bounces-293361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 05:10:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1B24D5CDD
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 05:10:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 393CD3040CB7
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 03:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 816A226E6E2;
	Wed,  6 May 2026 03:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="i8vTEj/e"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3442D1E511
	for <devicetree@vger.kernel.org>; Wed,  6 May 2026 03:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778037019; cv=none; b=QOCLFYyxI9X/FMMVFw5Z84aZhPZKQFYZjgOJBOsZb/0vxc5JFvmQ7x4FMI0/c24PaIVpZOcKwOAyg3Hlql7FuXaEXofqUEF/yiIII+WsT2YoOutdaKBnP8bsgdcQ2yD308tcTt/aQHFKDyy3fIi9xDOjd78s50JOcBdODIkya20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778037019; c=relaxed/simple;
	bh=Ol6E0xjeTH0xzhM6aeIPs87mP0qiiFO+h9u269KGsPs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=poXmyhmspYmMNKz6/cbRx2Lebq4CBFukkHw3QW99GCnkUQ+IjN8V+4/0x7eHGCGtitDSC8JCOJm/18Izlw4hZcVouamMkCER7b4EQCpA6xnWi19LpDKm9q+EGPlsDr3oImaZmAfCoH9dgJACO+J3oYZiZ72gAWEU+SjKN11+8f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=i8vTEj/e; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
Message-ID: <9666c1f5-722f-4c90-8412-19257a4afae5@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1778037014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gcgwlZTA/fiZkbJ47y7i8IDjnhGVvY59/zl+qWRNGo4=;
	b=i8vTEj/erdr35KBY+s4SQQtowWg4tX5Az30lj4BMr0ltajcGQmNuZEzSsiupLPpuocjOgS
	Hu683l/H56dBtL5e72k2+Fq5OhHHyeqERuk4JvrL3cmsF9dICC+6bygXNK2xhXpEpybKuB
	wuERQwPg6ha0UKU8CUqNW+9mlTDf2KxywFNPMH0kdJlxx9wI5wCQjfl4EP6GX9b9V84UfE
	FC06N5TTqV+6QEfGpz2kLYUpLgI8tEJdPf2gyYIu06RO2YYxcXBiO/olokSiy4JVBdR1th
	3lQh4gMNUnJzrG8aRMttN05MzRncntJD1xr5XAqsncp//o3htwAR8n7sbrS/Qw==
Date: Wed, 6 May 2026 00:10:07 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: qcom: Add Dell Inspiron 14 Plus 5441
To: Adam Szyma <adamszyma@wp.pl>, linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 quic_bjorande@quicinc.com
References: <20260504150812.15385-1-adamszyma@wp.pl>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <20260504150812.15385-1-adamszyma@wp.pl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: 5C1B24D5CDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[packett.cool,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293361-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[wp.pl,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[packett.cool:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,wp.pl:email]


On 5/4/26 12:08 PM, Adam Szyma wrote:
> Add device tree for the Dell Inspiron 14 Plus 5441 laptop which uses
> the Qualcomm Snapdragon X Plus X1P64100 SoC. The device shares the
> same platform (Thena) as the Dell Inspiron 14 Plus 7441 and Dell
> Latitude 7455, and reuses the x1-dell-thena.dtsi include.
>
> Signed-off-by: Adam Szyma <adamszyma@wp.pl>
> ---
>   arch/arm64/boot/dts/qcom/Makefile             |  1 +
>   .../x1p64100-dell-inspiron-14-plus-5441.dts   | 42 +++++++++++++++++++
>   2 files changed, 43 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/x1p64100-dell-inspiron-14-plus-5441.dts
>
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 4ba8e7306..8fb09ec5b 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -449,3 +449,4 @@ x1p42100-lenovo-thinkbook-16-el2-dtbs	:= x1p42100-lenovo-thinkbook-16.dtb x1-el2
>   dtb-$(CONFIG_ARCH_QCOM)	+= x1p42100-lenovo-thinkbook-16.dtb x1p42100-lenovo-thinkbook-16-el2.dtb
>   x1p64100-microsoft-denali-el2-dtbs	:= x1p64100-microsoft-denali.dtb x1-el2.dtbo
>   dtb-$(CONFIG_ARCH_QCOM)	+= x1p64100-microsoft-denali.dtb x1p64100-microsoft-denali-el2.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= x1p64100-dell-inspiron-14-plus-5441.dtb
You do need to do the EL2 overlay thing here as well just like the other 
models have it.
> diff --git a/arch/arm64/boot/dts/qcom/x1p64100-dell-inspiron-14-plus-5441.dts b/arch/arm64/boot/dts/qcom/x1p64100-dell-inspiron-14-plus-5441.dts
> new file mode 100644
> index 000000000..d38febdc4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1p64100-dell-inspiron-14-plus-5441.dts
> @@ -0,0 +1,42 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2026 Adam Szyma <adamszyma@wp.pl>
> + */
<one newline, please>
> +/dts-v1/;
> +#include "hamoa.dtsi"
> +#include "x1-dell-thena.dtsi"
> +
> +/ {
> +	model = "Dell Inspiron 14 Plus 5441";
> +	compatible = "dell,inspiron-14-plus-5441",
> +		     "qcom,x1p64100", "qcom,x1e80100";
> +};
> +
> +&sound {
> +	model = "X1E80100-Dell-Inspiron-14p-5441";
> +};

Is it a 2-speaker variant (no front tweeters)? Or is that only on the 
purwa model? From the pictures I can find online it seems to not have 
front speakers..

If so, the &left_tweeter &right_tweeter nodes should also be deleted 
with /delete-node/.

> +
> +&gpu {
> +	status = "okay";
> +};
> +
> +&gpu_zap_shader {
> +	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-5441/qcdxkmsuc8380.mbn";
> +};
> +
> +&iris {
> +	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-5441/qcvss8380.mbn";
> +	status = "okay";
> +};
> +
> +&remoteproc_adsp {
> +	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-5441/qcadsp8380.mbn",
> +			"qcom/x1e80100/dell/inspiron-14-plus-5441/adsp_dtbs.elf";
> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-5441/qccdsp8380.mbn",
> +			"qcom/x1e80100/dell/inspiron-14-plus-5441/cdsp_dtbs.elf";
> +	status = "okay";
> +};

Also could you confirm if there's actually no touchscreen?


Thanks,
~val



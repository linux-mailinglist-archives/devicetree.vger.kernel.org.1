Return-Path: <devicetree+bounces-265333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OP+pBR/+jmmOGwEAu9opvQ
	(envelope-from <devicetree+bounces-265333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:34:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD521351DE
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:34:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAB2E303FDCD
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 10:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AA882E6CB8;
	Fri, 13 Feb 2026 10:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="ocWTGaDg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu1.qq.com (smtpbgeu1.qq.com [52.59.177.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5D326AC3
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.59.177.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770978844; cv=none; b=nedHihNPj6kenAd0bH2StQWwxbf82oNGJLqwOegTHu6joT6cpHdQCCSFkdz9cUlonrSFppE8L8+W0ivlpDhGgUlcKKD9y8SwJ37xoDoiPIkWJIMXqwkhjts0wEhavV7RXO5n6ozKA8XgnSR9f3hxT3PP394OVTKq1vie/a/Uhdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770978844; c=relaxed/simple;
	bh=YpUhdVyn4kuYBxonETIJL3Kjz8WNfB52CAzSPorsEH0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RQeNdXsrKcTni2iaEP9qTGUBQHLQvxo8BZZtVARpsDZ6541xt6HCWhvqIERazgdiwo8CLIc2zWH8N4zSey+Oo5efKHJ7kj/2avl5d87zhzeSMqtWjif/9zsbRVAGd0FTTLY0hT/hUhwdbjX1T5FOwHJCWgbSIfFJGCtwj46REQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=ocWTGaDg; arc=none smtp.client-ip=52.59.177.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1770978772;
	bh=nshzxh9y6WqEB4WRbDhitJymaUOLK/yf767h/KWPrU8=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=ocWTGaDg9TLhmRn+O0719X89zgf3zeb9FEQgbTNtPWtPr6BP7H25kZEpGCE924fvg
	 cAO5Tuuf7T9g09e+IHBC02oLRYkcMh4TCKunDaQIFPWF7TnfshOWwrPsp4cxV1KR9O
	 ffnbQAHZXhx8xI3EhdzrNJN0fOepBroY9aag+XUM=
X-QQ-mid: zesmtpgz8t1770978767t2c3fd337
X-QQ-Originating-IP: TBATnZT9oxdxKnfXfChj4fGGtd3Cu+T1Z4H/cOr6yy4=
Received: from [127.0.0.1] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 13 Feb 2026 18:32:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4695454215096613574
Message-ID: <B5000B8F1001C1D8+040b217f-8ee1-4f96-95ec-e44d140b589d@airkyi.com>
Date: Fri, 13 Feb 2026 18:32:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add node name for
 RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: OFWsfmE1GYcu9RcZm1zNdEiv/fV17XjKtVbokAv7tVfDInpMR9idsTrR
	yDDRmNIj8kWnh7O7NwBg+DJKTv9mRKJ6M8hVBxow0z52BqFJJe/UGx6o6a7W57Fb2/FOrmE
	mI6VAllmfwUbVIqT7EoBEQksnU8lePKtaSI9VZbuYBsYpGqzxNzHKEz5d8q5maoKYqtKOnG
	kCcHrw8kgkaDy18eEQ54GLuvhLZNmDPrL2SJ5fHUoni0KWOPio41O/MjoswG3jvb6MdSzPO
	tYfCARXp+6sz4B9198buqARMcGY5jHqPu5duhzyBxxYVgo6zT3b/xfytQWuo9tkA9Qaxt7j
	oDzZ/f2dPW/+yrtlVNV1DZZMLs8wns4XsABawaxA7LE1l5NGdxU2MVrLmWF8cX+El9EEMet
	EQKIMWiimtFKFfJ5X0HaxnuDWoUKVOgyOSanrWphAxWtwVAIYh/TX5dg2mmZrMkAC6luDVW
	BtOm1KNthwA9CXrZNSgLZlmrIrlZob8Mz2G/4eTbn9yP2rPQc6KXzmkcoUYtqK9mDEQbaEQ
	YUIPd/ABj93LxMfZeJUTW6gqBISwE/1pZ5DxZr5rUxhfBd3IjMKH5vs32xQ3gcI5W/mUvk6
	DAb1wavSuachR9tg7Em45R0jGMgVGcCaNxoHh43SeI01MsN0NJvx9VXKMaV7LEHmcVwZw2y
	mZT9U7y/TmnemqN23dHRMe4y/39Rr28EggcW6SnDcDwXKhkIS2z5+aNdWeoyiagpwICcyBt
	CqydGY+SRibeePFDvL6rmeMnkrdDUmGuk+ZHs5GZhVZgi4DUhn3mAUtE9MbVi/O5gGhWWdt
	LimOwjXUZLd57xVx5+mUVjxDckh7nYgne8jIn1FqY0BGQ2ByTgZErNBeNFT0TQDTjqhgWrl
	fcsasZRo1Wg0PE+aVkXD4oV8roG/SyjZfWgFyCKPr48fy3i87lV71eX+5O/hL31eGpgF5gE
	3BpYPdvPwTV5md4jhU7YO0c+VoB55kTSFhzbGGeIYTmmologxLlFgjQeFomdWPQj8msU=
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
X-QQ-RECHKSPAM: 0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[airkyi.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-265333-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_MUA_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	DKIM_TRACE(0.00)[airkyi.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,airkyi.com:mid,airkyi.com:dkim,rk3588_pd_venc0:email,rk3588_pd_venc1:email]
X-Rspamd-Queue-Id: 4FD521351DE
X-Rspamd-Action: no action

Hello Shawn,

On 2/13/2026 10:35 AM, Shawn Lin wrote:
> Thus the board dts files could add property for these nodes.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
You should also add pmdomain driver.

I've encountered a similar issue before. 
Finley told me to use the new PMIC, and that would solve the problem. 
Maybe you're using the same old PMIC as I did :)


> 
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> index 7fe9593..4fb8888 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -907,7 +907,7 @@
>  				#size-cells = <0>;
>  				#power-domain-cells = <0>;
>  
> -				power-domain@RK3588_PD_RKVDEC0 {
> +				pd_rkvdec0: power-domain@RK3588_PD_RKVDEC0 {
>  					reg = <RK3588_PD_RKVDEC0>;
>  					clocks = <&cru HCLK_RKVDEC0>,
>  						 <&cru HCLK_VDPU_ROOT>,
> @@ -917,7 +917,7 @@
>  					pm_qos = <&qos_rkvdec0>;
>  					#power-domain-cells = <0>;
>  				};
> -				power-domain@RK3588_PD_RKVDEC1 {
> +				pd_rkvdec1: power-domain@RK3588_PD_RKVDEC1 {
>  					reg = <RK3588_PD_RKVDEC1>;
>  					clocks = <&cru HCLK_RKVDEC1>,
>  						 <&cru HCLK_VDPU_ROOT>,
> @@ -926,7 +926,7 @@
>  					pm_qos = <&qos_rkvdec1>;
>  					#power-domain-cells = <0>;
>  				};
> -				power-domain@RK3588_PD_VENC0 {
> +				pd_venc0: power-domain@RK3588_PD_VENC0 {
>  					reg = <RK3588_PD_VENC0>;
>  					clocks = <&cru HCLK_RKVENC0>,
>  						 <&cru ACLK_RKVENC0>;
> @@ -937,7 +937,7 @@
>  					#size-cells = <0>;
>  					#power-domain-cells = <0>;
>  
> -					power-domain@RK3588_PD_VENC1 {
> +				pd_venc1: power-domain@RK3588_PD_VENC1 {
>  						reg = <RK3588_PD_VENC1>;
>  						clocks = <&cru HCLK_RKVENC1>,
>  							 <&cru HCLK_RKVENC0>,

-- 
Best, 
Chaoyi




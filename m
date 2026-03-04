Return-Path: <devicetree+bounces-271165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EB7EBlkqGl3uQAAu9opvQ
	(envelope-from <devicetree+bounces-271165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:55:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A67AC204B1B
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:55:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C43030B7D35
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 16:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C816C36D9E1;
	Wed,  4 Mar 2026 16:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LgLcmXFx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FDE33D51B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 16:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772642098; cv=none; b=CnmVWLeXKdk/YXKMfBP4//hS6hMaGYhXg3Zj0IZ5/+S2Voskc0lLZ81Fk/rUqodWMR6ZFtZbFRsk50f+eFRY78qbG4LPkHeNXE1NLQEJbGSEV3C7vLVA4GZ2WYpXsOmrpXuwJpNuYFMJwK/qbygLHOzCDhCxkG5jbZ4g65fPYtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772642098; c=relaxed/simple;
	bh=exvesQmPJjoPcyRTeWTAaMPJFr0kH1SxcQZuIKPFw68=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Jw/YkKH+JWQIXTt9XCeqYG7OpKnyTmASruvotvJg2V4SiNh1Se/zO7KYlsJk2f1Rh2qTTJg8S53ijtnCN5GeDoBrnTohRqoro/4gPWe4OTcEq+VrS/kWeB7fDaF7tueP/+q7Xmokptrsj4GJqH4nJWTooutecL3Ky5XQeJdVnY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LgLcmXFx; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-48379a42f76so59290515e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772642094; x=1773246894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w5TxOSXNVjcAs46qQW0+vaF3ONKIhZ2ZaRuNPH28ksc=;
        b=LgLcmXFxVirR81C/QzCnMQ6b9GJUBknSMaoxEbnPw+YWo1soFtvUMffBlYcviY8M+/
         2wGVMaL31kuq8bF2q/0aCBhfWxFSSaplfjjR6yE1gRUB/iFhgu5UWQwItc+41tqKRDot
         lr3GKgIMpGpck/6cw4qeP8RDHkgreRhAz+bSIBtOnBWl4/FLto1ilzUk6dA6hAw31R65
         WB/CN7ssv7nycmpi8/Wu4NG2h94sTMUnXVIDgCaHV28AQWglvOfxqLImT8MfqPpFX/Wn
         1gAHRA61V0Roz4oLzt66i03QU9puqM0e1hB+2/nZ2+1h+Eu9pp6qJed0OChWJTDb5HFV
         q6vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772642094; x=1773246894;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w5TxOSXNVjcAs46qQW0+vaF3ONKIhZ2ZaRuNPH28ksc=;
        b=UJdjzmCEqE/20pJ+97K3WEgD6Jr+bst3NsVvzLK0+tyGLE1duLkOEmvrU+I1zX4IG8
         rwGjO9Ls67n/1znPHkg58WOclYcnUw+usTP6EU2TO+kd5J0nCEycNZuvg+gUrdM0SuW5
         wx1z9/jc6dYSalZ/k+9DI8HoBpBwjVTrmgXkGmgYMpW4XcP0AL7wIPoVK2YtWm1fAoFl
         1FkxA2e2/dvjF4gRKOulZ7hB5mIS9fvJbbcmbzW5ObzjCQyvApuFIERQAFfNTtY6sMkN
         lsbqrMtDPl89L4YcFwW2InzpojvrACFpVl5TuTf9xWgne9SakqMfZYTdvjdPYZgZaNTI
         TfFA==
X-Forwarded-Encrypted: i=1; AJvYcCUsd75QDhpnNELV08acscIPGsQyPMrko9+KS0tiwQLoxGFS8nwuegB4u2HHUhOxRq2A9yINMcbaU2ZM@vger.kernel.org
X-Gm-Message-State: AOJu0YwHiMJQ1mtlJbMltp/7SJS/txGZyn53xkFfKAoqlS4a+meZGG7O
	Mzd6OjVtgcMWBSMxLden+iF6E+2uL7K/I+Yf3840CRLW8Kp2xKtDKKtTcV0EOU/XIXU=
X-Gm-Gg: ATEYQzyM1WpHmwYBg6o+t7MpHGAJgyCuYUhfwVZRdKDYj3Br7JZcfJb8tdgIOc00mY2
	K/QDhTNAyMCgPbLoeF3gIAuk9sWlkkVPiQg1qGTxBomMRB91QR6d9+WNR3booI+na3zHLUGv7OQ
	5AuvnYBwR972t4/wyEQ8N2khM6xChxM86kBZIX8gXhIl3VF1TFLz3Z6dtrH/VdgabKVOGMTgbwT
	UcV5M8/Srg05hQEuNzPfifB4JU9nbnMrt79WPtKBoyArR3IBAYd2SJz5PCjZMtCcwxClfLB5dNN
	yD5FiBtZN5EH9nYL+XaOef5Dtky/Rtbr3axP2Xl9mMSJCKpIsDjks0OCULLsO+WVNlV8cVxc6Um
	LwmmnW6d0DEI3YIytq98PrGgFcBJEZksTrnd/celJp7ZuxqO992D1MQSJbVZIWqG3gOeXbHFtsu
	bDkz4EOrhpzj2bGRUwdccDbyVYMuZBinui/IKy+fOr1PaYzpw81+W5NgfPBZWxnh3qwz1h3n1Uf
	on1
X-Received: by 2002:a05:600c:8b0d:b0:459:db7b:988e with SMTP id 5b1f17b1804b1-4851984d944mr51667315e9.13.1772642094169;
        Wed, 04 Mar 2026 08:34:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:da6:dde3:e477:94d2? ([2a01:e0a:106d:1080:da6:dde3:e477:94d2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485187ced3bsm58232815e9.8.2026.03.04.08.34.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 08:34:53 -0800 (PST)
Message-ID: <8e88addc-c3a8-4f06-936e-eea059a33b8d@linaro.org>
Date: Wed, 4 Mar 2026 17:34:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 3/3] drm/panel: panel-jadard-jd9365da-h3: support for
 taiguan-xti05101-01a MIPI-DSI panel
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>, simona@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 mani@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com, dev@kael-k.io,
 kever.yang@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dianders@chromium.org
References: <20260214085409.3489057-1-yelangyan@huaqin.corp-partner.google.com>
 <20260214085409.3489057-4-yelangyan@huaqin.corp-partner.google.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260214085409.3489057-4-yelangyan@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: A67AC204B1B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271165-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_NO_DN(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,linaro.org:mid,linaro.org:replyto]
X-Rspamd-Action: no action

On 2/14/26 09:54, Langyan Ye wrote:
> The taiguan-xti05101-01a is a 10.1" TFT panel. The MIPI controller on this
> panel is the same as the other panels here, so add this panel to this
> driver.
> 
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---
>   .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 244 ++++++++++++++++++
>   1 file changed, 244 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> index 5386a06fcd08..c33c611e03c0 100644
> --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> @@ -1366,6 +1366,246 @@ static const struct jadard_panel_desc anbernic_rgds_display_desc = {
>   		      MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM,
>   };
>   
> +static int taiguan_xti05101_01a_init_cmds(struct jadard *jadard)
> +{
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = jadard->dsi };
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x00);
> +	jadard_enable_standard_cmds(&dsi_ctx);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x74);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0xd7);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0xd7);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0xfe);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x19);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x28);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x12);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0x78);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0xff);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0x7f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0xa0);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x1e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x6a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5a, 0x2e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x1a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5c, 0x15);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x7f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x58);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x39);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x35);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x27);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x2b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x16);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x30);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x2e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0x2f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x4d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x3c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x36);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6c, 0x31);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6d, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6e, 0x14);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x70, 0x7f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x71, 0x58);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x72, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x73, 0x39);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x74, 0x35);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0x27);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x2b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x16);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x30);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x79, 0x2e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7a, 0x2f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7b, 0x4d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7c, 0x3c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7d, 0x43);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7e, 0x36);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7f, 0x31);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x24);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x81, 0x14);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x82, 0x02);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x02);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x52);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x01, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x03, 0x50);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x77);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x06, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x07, 0x4e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x08, 0x4c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0a, 0x4a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0b, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0c, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0d, 0x46);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x44);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0f, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x10, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x11, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x12, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x13, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x14, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x15, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x16, 0x53);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x17, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x18, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x19, 0x51);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1a, 0x77);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1b, 0x57);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1c, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1d, 0x4f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1e, 0x4d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x1f, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x20, 0x4b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x21, 0x49);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x22, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x23, 0x47);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x24, 0x45);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x25, 0x41);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x26, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x27, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x28, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x29, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2a, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2b, 0x5f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2c, 0x13);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2d, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2e, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2f, 0x01);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x30, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x31, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x32, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x33, 0x0d);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x34, 0x0f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x35, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x36, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x07);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x38, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x39, 0x09);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3a, 0x0b);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3b, 0x11);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3c, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3d, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3e, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x3f, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x40, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x41, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x42, 0x12);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x43, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x44, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x45, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x46, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x47, 0x17);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x48, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x49, 0x0c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4a, 0x0e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4b, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4c, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4d, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4e, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x4f, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x0a);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x51, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x52, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x53, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x54, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x55, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x56, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x1f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x58, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5b, 0x10);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5c, 0x06);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5d, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5e, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x5f, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x60, 0x40);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x61, 0x03);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x62, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x63, 0x6c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x64, 0x6c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x65, 0x75);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x66, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x67, 0xb4);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x68, 0x08);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x69, 0x6c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6a, 0x6c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6b, 0x0c);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6d, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6e, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x88);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x75, 0xbb);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x76, 0x00);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x77, 0x05);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x78, 0x2a);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x04);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x00, 0x0e);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0xb3);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x09, 0x61);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x0e, 0x48);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x2b, 0x0f);
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x37, 0x58);
> +
> +	jd9365da_switch_page(&dsi_ctx, 0x00);
> +
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> +
> +	mipi_dsi_msleep(&dsi_ctx, 120);
> +
> +	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> +
> +	mipi_dsi_msleep(&dsi_ctx, 20);
> +
> +	return dsi_ctx.accum_err;
> +};
> +
> +static const struct jadard_panel_desc taiguan_xti05101_01a_desc = {
> +	.mode = {
> +		.clock		= (800 + 24 + 24 + 24) * (1280 + 30 + 4 + 8) * 60 / 1000,
> +
> +		.hdisplay	= 800,
> +		.hsync_start	= 800 + 24,
> +		.hsync_end	= 800 + 24 + 24,
> +		.htotal		= 800 + 24 + 24 + 24,
> +
> +		.vdisplay	= 1280,
> +		.vsync_start	= 1280 + 30,
> +		.vsync_end	= 1280 + 30 + 4,
> +		.vtotal		= 1280 + 30 + 4 + 8,
> +
> +		.width_mm	= 135,
> +		.height_mm	= 216,
> +		.type		= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
> +	},
> +	.lanes = 4,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.init = taiguan_xti05101_01a_init_cmds,
> +	.lp11_before_reset = true,
> +	.reset_before_power_off_vcioo = true,
> +	.vcioo_to_lp11_delay_ms = 5,
> +	.lp11_to_reset_delay_ms = 10,
> +	.backlight_off_to_display_off_delay_ms = 3,
> +	.display_off_to_enter_sleep_delay_ms = 50,
> +	.enter_sleep_to_reset_down_delay_ms = 100,
> +};
> +
>   static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
>   {
>   	struct device *dev = &dsi->dev;
> @@ -1463,6 +1703,10 @@ static const struct of_device_id jadard_of_match[] = {
>   		.compatible = "radxa,display-8hd-ad002",
>   		.data = &radxa_display_8hd_ad002_desc
>   	},
> +	{
> +		.compatible = "taiguanck,xti05101-01a",
> +		.data = &taiguan_xti05101_01a_desc
> +	},
>   	{ /* sentinel */ }
>   };
>   MODULE_DEVICE_TABLE(of, jadard_of_match);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil


Return-Path: <devicetree+bounces-256961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FD3D3AFD9
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 17:00:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 867A030A1425
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B109F38E101;
	Mon, 19 Jan 2026 15:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LbqoHLya"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C56D38BF66
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768838209; cv=none; b=CToaKlbygM5NcpeepqIPjcSEu/Wr9ePo3KB+I2gfc2x410tUgvZANtBQ3WLEDIAEMdz7tCoWObv0+zLK7/CUAs3e6xoSCf9S+DgK2euVT5cr/7MzCf8ffXDqgiNq2Jb7vdrMkMJ6E6Ff9Z7EAwVnbnN6TSiBf9C1yyzSzv+zONM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768838209; c=relaxed/simple;
	bh=kmb0xz+cxH7bZ9ZsML6ZYz/AL5TRMq96zD1xbbV7jno=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kDBVpO8WDB+PKSdLl/BUj52NpTz2FjJRjHMmDKumql2iKRQ9gEQsiE8zaOYvlcRQIokELYqTHO+MrZ4ntDiBHAQR/4BcKIt+20+cphpKxCK44vGCtqx/UdtDSgjdRRNKBfhUs8R7CpYhj9/JnFjA/TcJLW2emnEikDMMDqYCNFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LbqoHLya; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-793fdbb8d3aso4811007b3.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768838207; x=1769443007; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZFi+VJ96Lx+RhMsznMcBzo/7WtrXEjJe+WbuE10vlzM=;
        b=LbqoHLyasc57o6KtT0/H5E5//Xn4Hf5OSWzVk78CGBmY7QZX18ezlDb8QSYAXlEYGc
         fvC0yi7L8xhqiEa7ONU7ansM9mCaMndc9hN/v9jHRKkkuoWEE7mtoGZCJ4anx63c38mE
         UhgQji0nUPg5PDtfcTCAmu4dQ1Gp66O6ALHos6yBky71deqmxasfwSgkNFsGQ0tB5StV
         5mg3jUrD7Do8t6fZ4U7XRvKdE2i6bR2497SwBY6ZAs+qCBZbWnKEqHi6Ll/fM/mrYc2A
         mjZ0A/GbKPn43GgntLfy+T9kBFm148ewxXKr4SNQWro1eAIfGK7ep8Z9Vuj9m82oKhOV
         OJPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768838207; x=1769443007;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZFi+VJ96Lx+RhMsznMcBzo/7WtrXEjJe+WbuE10vlzM=;
        b=I5BeLwwmftVQVbgbj2QOKw7af5LRvcR0YvDccQfw6KCjldwzOpQYXH30iA+bprkw3p
         2rHymiJBZroCnvfMZlEqIcf/2d/+WND/VpdXvcK14hCp0SK1lYrFReb8nfacW08/tnPW
         8RwTapvFkTCrlpi8kshanOBDSk48cbzpUxsciC3mrzOlgyCkI9MRuJWm98D4zryM50++
         +0IKG+/6cxa1QZIY99NqRxB+28JMfTMXCqa+C3nRlV6MWB7q5upeLucXxecAWUm01q9e
         aU1/6QnaunWQC9iOupYK6oB7CgQJs3nyE0KJ1rJOF8tNnL1NLcRwEtJ26bAhzujzMJBL
         NRsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVb/8G7TQGLCD8Ja4XJry0qAM+d4fDytfmDB9/9Wh0MZszhyTCQ+tf2Ov1SHxj9glmJjWUJyKiWFBv1@vger.kernel.org
X-Gm-Message-State: AOJu0YzbaBOawySa4GaZD5TxwxU5kg+VsitokrPp3uo3J9f87ad4A6fM
	OVkeOr9cw5OvQYOhkSvTlkgpKbvOAtcwrer0xO8Uobzuebi9hP51zVgARshPZX0dUE2jf5MeHOa
	7mDOXobLXASwEreQes3/Bp3hFD29pyn4=
X-Gm-Gg: AZuq6aL+7E1ZOrrnVmTPQI8FWXAVgS9GaOoHOUDNzS1b3YJDTgBvfQbVf4JPgghJlpH
	zD1vdBP4YdMEXmqNn7BLClGZUCWHLHewqIIB0eSXMQrvrpYgfjVTJF0qtHkhs4PNXx31B0p8Q7J
	PiTMKdHd2O6VKrAYePOjIFbWQO72LZYerZBzqrULClmMCDAK7Q/zC2ikUY8PTh60879OawkCoE6
	3j8ykDdkYeukU16QIJWaZBVmL6je3gIYJupuuSylKRG2MFFtMz01e1GWNgrhNCvfWftSA==
X-Received: by 2002:a05:690c:6d8b:b0:78c:32fc:d3c8 with SMTP id
 00721157ae682-793c54063b1mr84654397b3.61.1768838207073; Mon, 19 Jan 2026
 07:56:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119140238.3360658-1-miaoqing.pan@oss.qualcomm.com> <20260119140238.3360658-2-miaoqing.pan@oss.qualcomm.com>
In-Reply-To: <20260119140238.3360658-2-miaoqing.pan@oss.qualcomm.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Mon, 19 Jan 2026 16:56:35 +0100
X-Gm-Features: AZwV_QjDpm8QDQgjkrGwqj8CMMa00N7wkcI94H42Z5svJe8pdQ2INMjNC6m63_4
Message-ID: <CAOiHx=nBLtSFNhuRZrHn5z8bCrA5nyuS9G8B0nh-WTiFU_HUMw@mail.gmail.com>
Subject: Re: [PATCH v3 ath-current 1/2] wifi: ath11k: add usecase firmware
 handling based on device compatible
To: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Cc: jjohnson@kernel.org, johannes@sipsolutions.net, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, ath11k@lists.infradead.org, 
	linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, krzk@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jan 19, 2026 at 3:04=E2=80=AFPM Miaoqing Pan
<miaoqing.pan@oss.qualcomm.com> wrote:
>
> For M.2 WLAN chips, there is no suitable DTS node to specify the
> firmware-name property. In addition, assigning firmware for the
> M.2 PCIe interface causes chips that do not use usecase specific
> firmware to fail. Therefore, abandoning the approach of specifying
> firmware in DTS. As an alternative, propose a static lookup table
> mapping device compatible to firmware names. Currently, only WCN6855
> HW2.1 requires this.
>
> However, support for the firmware-name property is retained to keep
> the ABI backwards compatible.
>
> For details on usecase specific firmware, see:
> https://lore.kernel.org/all/20250522013444.1301330-3-miaoqing.pan@oss.qua=
lcomm.com/.
>
> Tested-on: WCN6855 hw2.1 PCI WLAN.HSP.1.1-04685-QCAHSPSWPL_V1_V2_SILICONZ=
_IOE-1
>
> Fixes: edbbc647c4f3 ("wifi: ath11k: support usercase-specific firmware ov=
errides")
> Signed-off-by: Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
> ---
>  drivers/net/wireless/ath/ath11k/core.c | 36 ++++++++++++++++++++++++++
>  drivers/net/wireless/ath/ath11k/core.h |  4 +++
>  2 files changed, 40 insertions(+)
>
> diff --git a/drivers/net/wireless/ath/ath11k/core.c b/drivers/net/wireles=
s/ath/ath11k/core.c
> index de84906d1b27..1cf7f4e601c3 100644
> --- a/drivers/net/wireless/ath/ath11k/core.c
> +++ b/drivers/net/wireless/ath/ath11k/core.c
> @@ -1044,6 +1044,42 @@ static const struct dmi_system_id ath11k_pm_quirk_=
table[] =3D {
>         {}
>  };
>
> +static const struct __ath11k_core_usecase_firmware_table {
> +       u32 hw_rev;
> +       const char *compatible;
> +       const char *firmware_name;
> +} ath11k_core_usecase_firmware_table[] =3D {
> +       { ATH11K_HW_WCN6855_HW21, "qcom,lemans-evk", "nfa765"},
> +       { ATH11K_HW_WCN6855_HW21, "qcom,monaco-evk", "nfa765"},
> +       { ATH11K_HW_WCN6855_HW21, "qcom,hamoa-iot-evk", "nfa765"},
> +       { /* Sentinel */ }
> +};
> +
> +const char *ath11k_core_get_usecase_firmware(struct ath11k_base *ab)
> +{
> +       struct device_node *root __free(device_node) =3D of_find_node_by_=
path("/");
> +       const struct __ath11k_core_usecase_firmware_table *entry =3D NULL=
;
> +       int i, count =3D of_property_count_strings(root, "compatible");
> +       const char *compatible =3D NULL;
> +
> +       for (i =3D 0; i < count; i++) {
> +               if (of_property_read_string_index(root, "compatible", i,
> +                                                 &compatible) < 0)
> +                       continue;
> +
> +               entry =3D ath11k_core_usecase_firmware_table;
> +               while (entry->compatible) {
> +                       if (ab->hw_rev =3D=3D entry->hw_rev &&
> +                           !strcmp(entry->compatible, compatible))

You should be able to replace most of this code by using
of_machine_is_compatible(entry->compatible) instead.

> +                               return entry->firmware_name;
> +                       entry++;
> +               }
> +       }
> +
> +       return NULL;
> +}
> +EXPORT_SYMBOL(ath11k_core_get_usecase_firmware);
> +
>  void ath11k_fw_stats_pdevs_free(struct list_head *head)
>  {

Best regards,
Jonas


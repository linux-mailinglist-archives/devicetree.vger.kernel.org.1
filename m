Return-Path: <devicetree+bounces-273473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLWqFZP9r2mmdwIAu9opvQ
	(envelope-from <devicetree+bounces-273473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:16:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7E824A46E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:16:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5F82D302D706
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F16635AC23;
	Tue, 10 Mar 2026 11:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="LFhyFu3t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49221.qiye.163.com (mail-m49221.qiye.163.com [45.254.49.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A10274B3B;
	Tue, 10 Mar 2026 11:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773141393; cv=none; b=juvLuF5UP2wPcf6u1FgI4UP2hSzkHq4xwmO60taSqZarbE+cXGHcAL/5N8OJkYgv5CFVUPJJJcbAE2vkFn7UVH6xidzcVbxtKEJgNzEdUEKo5ZeMtSubvOQY64ToLqYz3d3KNU/jHsRvPb5mjMmPf6jj+UoII4XhRHO2+c4X3k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773141393; c=relaxed/simple;
	bh=8OcgSlacC3HgIB8FyyvJxLvKqyPZ4ypmuCBEGdwrAgw=;
	h=Content-Type:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To; b=IGKe8qhAe+qLsVV0kMQDwthopYEFTjEtncDaUknCsIGq6Tl6qxpGmr0QzevGNYCWZG+ohqN1LZM5VessaeEacwwBHCi4lg+kEsSM0WfNGIuaQWyGQmBsY3l9p+ggWaC+Ek2NMoNYxqB0a25ynSf8KgQcmiXTybMMqJ+CAD1y3Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=LFhyFu3t; arc=none smtp.client-ip=45.254.49.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3668f21e9;
	Tue, 10 Mar 2026 19:11:09 +0800 (GMT+08:00)
Content-Type: multipart/mixed; boundary="------------wpCoePhEUNQ1Y0Peap4Fj8Yn"
Message-ID: <971a7aa1-54cb-4e44-a1c2-8d47687ed173@rock-chips.com>
Date: Tue, 10 Mar 2026 19:11:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/4] Add eDP support for RK3576
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, nicolas.frattaroli@collabora.com,
 alchark@gmail.com, cristian.ciocaltea@collabora.com,
 sebastian.reichel@collabora.com, kever.yang@rock-chips.com,
 dmitry.baryshkov@oss.qualcomm.com, luca.ceresoli@bootlin.com,
 dianders@chromium.org, m.szyprowski@samsung.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260310105307.309765-1-damon.ding@rock-chips.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260310105307.309765-1-damon.ding@rock-chips.com>
X-HM-Tid: 0a9cd771900203a3kunmce5e890e376ba7
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ01DHlYfSkxPSxgaSBlCSUlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=LFhyFu3tLapRxoOgprExWXx5UOIWwMVycvDP6w0CnF2mkh0F4rSiuPDutZKhINyumasa9Qdf7LYEwM+Tv96eLqhkLyNTzaz7PKC/9t5ffoCB+Qm22TWdJq2HFLQHsQdSMF3DVU3O8riWvyCBiVpjes1eKJYybIYrgiO95LlBhHU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=GT6xrSbsGz3JdNWWkC/+yqc2gpNhn25S9aXstewXALE=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: EF7E824A46E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273473-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,rock-chips.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,rockchip_vop2_ep_hdmi0:email,rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid,rockchip_vop2_ep_edp0:email]
X-Rspamd-Action: no action

This is a multi-part message in MIME format.
--------------wpCoePhEUNQ1Y0Peap4Fj8Yn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/10/2026 6:53 PM, Damon Ding wrote:
> These patchs have been tested with a 1536x2048p60 eDP panel on
> RK3576 EVB1 board (hardware modified specially).

The DTS changes are attached as an attachment.

> 
> Patch 1~2 are to add the RK3576 eDP node.
> Patch 3~4 are to support the RK3576 Analogix DP controller.
> 
> Damon Ding (4):
>    dt-bindings: display: rockchip: analogix-dp: Add support for RK3576
>    arm64: dts: rockchip: Add eDP node for RK3576
>    drm/bridge: analogix_dp: Add support for RK3576
>    drm/rockchip: analogix_dp: Add support for RK3576
> 
>   .../rockchip/rockchip,analogix-dp.yaml        |  6 +++-
>   arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 28 +++++++++++++++++++
>   .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
>   .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 15 ++++++++++
>   include/drm/bridge/analogix_dp.h              |  3 +-
>   5 files changed, 51 insertions(+), 2 deletions(-)
> 

Best regards,
Damon

--------------wpCoePhEUNQ1Y0Peap4Fj8Yn
Content-Type: text/plain; charset=UTF-8;
 name="0001-Test-only-arm64-dts-rockchip-Enable-eDP-display-on-R.patch"
Content-Disposition: attachment;
 filename*0="0001-Test-only-arm64-dts-rockchip-Enable-eDP-display-on-R.pa";
 filename*1="tch"
Content-Transfer-Encoding: base64

RnJvbSBmNGM4ZmU5NmI5NzMxYTRjMWViNjMyMWNkZTI0NDlhMTVmNWQ2MDUwIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hp
cHMuY29tPgpEYXRlOiBUdWUsIDEwIE1hciAyMDI2IDE4OjE1OjU3ICswODAwClN1YmplY3Q6
IFtQQVRDSF0gW1Rlc3Qtb25seV1hcm02NDogZHRzOiByb2NrY2hpcDogRW5hYmxlIGVEUCBk
aXNwbGF5IG9uIFJLMzU3NgogRVZCMSBib2FyZAoKU2lnbmVkLW9mZi1ieTogRGFtb24gRGlu
ZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KLS0tCiAuLi4vYm9vdC9kdHMvcm9ja2No
aXAvcmszNTc2LWV2YjEtdjEwLmR0cyAgICAgfCA3OSArKysrKysrKysrKysrLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtZXZiMS12MTAu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtZXZiMS12MTAuZHRz
CmluZGV4IGRiOGZlZjdhNGYxYi4uYzE2MzI1MjY2ZDA5IDEwMDY0NAotLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1ldmIxLXYxMC5kdHMKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtZXZiMS12MTAuZHRzCkBAIC0yMiw4ICsy
MiwxNSBAQCBhbGlhc2VzIHsKIAkJZXRoZXJuZXQxID0gJmdtYWMxOwogCX07CiAKKwliYWNr
bGlnaHQ6IGJhY2tsaWdodCB7CisJCWNvbXBhdGlibGUgPSAicHdtLWJhY2tsaWdodCI7CisJ
CXBvd2VyLXN1cHBseSA9IDwmdmNjM3YzX2xjZF9uPjsKKwkJcHdtcyA9IDwmZ3Bpb19wd20w
IDAgMjUwMDAgMD47CisJfTsKKwogCWNob3NlbjogY2hvc2VuIHsKIAkJc3Rkb3V0LXBhdGgg
PSAic2VyaWFsMDoxNTAwMDAwbjgiOworCQlib290YXJncyA9ICJyb290PVBBUlRVVUlEPTYx
NGUwMDAwLTAwMDAgcm9vdHdhaXQiOwogCX07CiAKIAlhZGNfa2V5czogYWRjLWtleXMgewpA
QCAtNjEsMTIgKzY4LDYgQEAgYnV0dG9uLXZvbC11cCB7CiAJaGRtaS1jb24gewogCQljb21w
YXRpYmxlID0gImhkbWktY29ubmVjdG9yIjsKIAkJdHlwZSA9ICJhIjsKLQotCQlwb3J0IHsK
LQkJCWhkbWlfY29uX2luOiBlbmRwb2ludCB7Ci0JCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZo
ZG1pX291dF9jb24+OwotCQkJfTsKLQkJfTsKIAl9OwogCiAJbGVkczogbGVkcyB7CkBAIC03
OCw2ICs3OSwxNCBAQCB3b3JrX2xlZDogbGVkLTAgewogCQl9OwogCX07CiAKKwlncGlvX3B3
bTA6IGdwaW8tcHdtMCB7CisJCWNvbXBhdGlibGUgPSAicHdtLWdwaW8iOworCQlncGlvcyA9
IDwmZ3BpbzAgUktfUEI1IEdQSU9fQUNUSVZFX0hJR0g+OworCQlwaW5jdHJsLTAgPSA8Jmdw
aW9fcHdtMF9waW4+OworCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQkjcHdtLWNl
bGxzID0gPDM+OworCX07CisKIAl2YnVzNXYwX3R5cGVjOiByZWd1bGF0b3ItdmJ1czV2MC10
eXBlYyB7CiAJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKIAkJcmVndWxhdG9y
LW5hbWUgPSAidmJ1czV2MF90eXBlYyI7CkBAIC0yNjQsNiArMjczLDM4IEBAICZjb21icGh5
MV9wc3UgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZlZHAgeworCWZvcmNlLWhwZDsK
KwlzdGF0dXMgPSAib2theSI7CisKKwlhdXgtYnVzIHsKKwkJcGFuZWwgeworCQkJY29tcGF0
aWJsZSA9ICJlZHAtcGFuZWwiOworCQkJYmFja2xpZ2h0ID0gPCZiYWNrbGlnaHQ+OworCQkJ
cG93ZXItc3VwcGx5ID0gPCZ2Y2MzdjNfbGNkX24+OworCQkJbm8taHBkOworCisJCQlwb3J0
IHsKKwkJCQlwYW5lbF9pbl9lZHA6IGVuZHBvaW50IHsKKwkJCQkJcmVtb3RlLWVuZHBvaW50
ID0gPCZlZHBfb3V0X3BhbmVsPjsKKwkJCQl9OworCQkJfTsKKwkJfTsKKwl9OworfTsKKwor
JmVkcF9pbiB7CisJZWRwX2luX3ZwMDogZW5kcG9pbnQgeworCQlyZW1vdGUtZW5kcG9pbnQg
PSA8JnZwMF9vdXRfZWRwPjsKKwl9OworfTsKKworJmVkcF9vdXQgeworCWVkcF9vdXRfcGFu
ZWw6IGVuZHBvaW50IHsKKwkJcmVtb3RlLWVuZHBvaW50ID0gPCZwYW5lbF9pbl9lZHA+Owor
CX07Cit9OworCiAmZ21hYzAgewogCWNsb2NrX2luX291dCA9ICJvdXRwdXQiOwogCXBoeS1t
b2RlID0gInJnbWlpLXJ4aWQiOwpAQCAtMzAwLDE5ICszNDEsNyBAQCAmZ3B1IHsKIH07CiAK
ICZoZG1pIHsKLQlzdGF0dXMgPSAib2theSI7Ci19OwotCi0maGRtaV9pbiB7Ci0JaGRtaV9p
bl92cDA6IGVuZHBvaW50IHsKLQkJcmVtb3RlLWVuZHBvaW50ID0gPCZ2cDBfb3V0X2hkbWk+
OwotCX07Ci19OwotCi0maGRtaV9vdXQgewotCWhkbWlfb3V0X2NvbjogZW5kcG9pbnQgewot
CQlyZW1vdGUtZW5kcG9pbnQgPSA8JmhkbWlfY29uX2luPjsKLQl9OworCXN0YXR1cyA9ICJk
aXNhYmxlZCI7CiB9OwogCiAmaGRwdHhwaHkgewpAQCAtNzc0LDYgKzgwMywxMiBAQCAmcGNp
ZTEgewogfTsKIAogJnBpbmN0cmwgeworCWdwaW9fcHdtMCB7CisJCWdwaW9fcHdtMF9waW46
IGdwaW8tcHdtMC1waW4geworCQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BCNSBSS19GVU5D
X0dQSU8gJnBjZmdfcHVsbF9kb3duPjsKKwkJfTsKKwl9OworCiAJYmx1ZXRvb3RoIHsKIAkJ
YnRfcmVnX29uOiBidC1yZWctb24gewogCQkJcm9ja2NoaXAscGlucyA9IDwxIFJLX1BDNyBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47CkBAIC05MzYsOCArOTcxLDggQEAgJnZvcF9t
bXUgewogfTsKIAogJnZwMCB7Ci0JdnAwX291dF9oZG1pOiBlbmRwb2ludEBST0NLQ0hJUF9W
T1AyX0VQX0hETUkwIHsKLQkJcmVnID0gPFJPQ0tDSElQX1ZPUDJfRVBfSERNSTA+OwotCQly
ZW1vdGUtZW5kcG9pbnQgPSA8JmhkbWlfaW5fdnAwPjsKKwl2cDBfb3V0X2VkcDogZW5kcG9p
bnRAUk9DS0NISVBfVk9QMl9FUF9FRFAwIHsKKwkJcmVnID0gPFJPQ0tDSElQX1ZPUDJfRVBf
RURQMD47CisJCXJlbW90ZS1lbmRwb2ludCA9IDwmZWRwX2luX3ZwMD47CiAJfTsKIH07Ci0t
IAoyLjM0LjEKCg==

--------------wpCoePhEUNQ1Y0Peap4Fj8Yn--


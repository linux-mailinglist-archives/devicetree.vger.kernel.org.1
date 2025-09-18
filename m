Return-Path: <devicetree+bounces-212446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C83B42C17
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 23:45:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8041C1891FC3
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 21:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBEEE2E7623;
	Wed,  3 Sep 2025 21:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="vkFm4xmi"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C2AA2857F2
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 21:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756935911; cv=none; b=MthwlMLB3ECTZ3b7Mojrk+aaxR9c6fZ9qFLKN0QyzrLxgRmx92iZ29gyMqS2xmxtiRsuF0V0SruXHUwCMrRu4uK+Gn4HihtC5HaEfzlj64PHMWEYeGz7QSR3I6VbFo/vI6fYjTyfT53z+AMrDG4op/SKEkTiAXWSOpqdaVSddbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756935911; c=relaxed/simple;
	bh=Rk/81HoYs1XcBUonvHKeYrsIYcl6a8/NFUPshCQPazE=;
	h=Content-Type:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To; b=UuWoHi4Z3ebo+pTzEBxUbalMrWujC9XKsf6fefudhVIQJmpu+16GkqV6sW6jO+Lk/VDscW7mI2/PRGEk5qx9WAcGh8wTXyoTtssgsztnBCGZ0L9nitvqga4bVrlKQRyn9tSvYyWRHksBLb/CUfgwlWaegCdWcq8DLmof0ZsGDww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=vkFm4xmi; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4cHGNw69gDz9tGC;
	Wed,  3 Sep 2025 23:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1756935904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ZHjmanIcUbDp1eBa3yuGWLKN46L05l3A9F8rJ1gjMeE=;
	b=vkFm4xmiSkJrIIWfI+hF9v56JXlaziTisVgB/GlTG9jFBC7oXYCdea4poqo1uIryj3BT74
	U79gyfG7hok/ac/eq/BRraZ8UeKuV/XMKMORJSJL+g0NLYQH8yldjSscUF9QkETfU9MJa9
	bFSa0PiHK6+g5MXCF0Hsp9VITi2V3HQBOnGiUTvXc/rEnuG8F2WF/3Gc4MyN0QQo3PncKO
	Ajgt9o3MwWJFKwiTUz199kCI7h4mErrlSXaF9GmzsvjQaasZ7hMrVLiZBXZ8VUhjcozNp5
	H1zLA24J/zJewbbYpVxkRVv/n0b50Ar+yiHcSl9VEb45aX9LZWuIc35VlLIbEA==
Content-Type: multipart/mixed; boundary="------------RUV3G7hQJYDoa7JET1paPDuU"
Message-ID: <838a0c6b-845b-428d-86b3-1480e5b8080f@mailbox.org>
Date: Wed, 3 Sep 2025 23:44:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 4/9] drm/panthor: Implement optional reset
To: Boris Brezillon <boris.brezillon@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 David Airlie <airlied@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sre@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Simona Vetter <simona@ffwll.ch>,
 Steven Price <steven.price@arm.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev
References: <20250321200625.132494-1-marex@denx.de>
 <20250321200625.132494-5-marex@denx.de>
 <20250324094333.7afb17a1@collabora.com>
 <c1de2afb-3559-4fbb-b13b-2373175b420b@denx.de>
 <20250325084349.344a0f11@collabora.com>
 <7aadf355-edf0-46fc-b969-65c3789375ca@denx.de>
 <20250325153507.61d82e39@collabora.com>
 <4c06aef3-a254-437c-aa15-8e3eb7bf5951@denx.de>
 <20250325155231.0d1b1000@collabora.com>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <20250325155231.0d1b1000@collabora.com>
X-MBO-RS-ID: d51b669d6529346a39c
X-MBO-RS-META: u4q78zyf4fuepdgig3d9tbpa5hm16r61

This is a multi-part message in MIME format.
--------------RUV3G7hQJYDoa7JET1paPDuU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/25/25 3:52 PM, Boris Brezillon wrote:

Hello Boris,

sorry for the late reply.

>>>>>>> Hm, that might be the cause of the fast reset issue (which is a fast
>>>>>>> resume more than a fast reset BTW): if you re-assert the reset line on
>>>>>>> runtime suspend, I guess this causes a full GPU reset, and the MCU ends
>>>>>>> up in a state where it needs a slow reset (all data sections reset to
>>>>>>> their initial state). Can you try to move the reset_control_[de]assert
>>>>>>> to the unplug/init functions?
>>>>>> Is it correct to assume , that if I remove all reset_control_assert()
>>>>>> calls (and keep only the _deassert() calls), the slow resume problem
>>>>>> should go away too ?
>>>>>
>>>>> Yeah, dropping the _assert()s should do the trick.
>>>> Hmmm, no, that does not help. I was hoping maybe NXP can chime in and
>>>> suggest something too ?
>>>
>>> Can you try keep all the clks/regulators/power-domains/... on after
>>> init, and see if the fast resume works with that. If it does,
>>> re-introduce one resource at a time to find out which one causes the
>>> MCU to lose its state.
>>
>> I already tried that too . I spent quite a while until I reached that L2
>> workaround in fact.
> 
> So, with your RPM suspend/resume being NOPs, it still doesn't work?
> Unless the FW is doing something behind our back, I don't really see
> why this would fail on your platform, but not on the rk3588. Are you
> sure the power domains are kept on at all times. I'm asking, because if
> you linked all the PDs, the on/off sequence is automatically handled by
> the RPM core at suspend/resume time.

I revisited this now.

Can you please test the following patch (also attached) on one of your 
devices, and tell me what the status is at the end . The diff sets the 
GLB_HALT bit and then clears it again, which I suspect should first halt 
the GPU and (this is what I am unsure about) then again un-halt/resume 
the GPU ?

"
diff --git a/drivers/gpu/drm/panthor/panthor_fw.c 
b/drivers/gpu/drm/panthor/panthor_fw.c
index 9bf06e55eaeea..57c0d4fd29aa2 100644
--- a/drivers/gpu/drm/panthor/panthor_fw.c
+++ b/drivers/gpu/drm/panthor/panthor_fw.c
@@ -1087,8 +1087,16 @@ void panthor_fw_pre_reset(struct panthor_device 
*ptdev, bool on_hang)
  		struct panthor_fw_global_iface *glb_iface = 
panthor_fw_get_glb_iface(ptdev);
  		u32 status;

+pr_err("%s[%d] pre-halt status=%x\n", __func__, __LINE__, 
gpu_read(ptdev, MCU_STATUS));
+
  		panthor_fw_update_reqs(glb_iface, req, GLB_HALT, GLB_HALT);
  		gpu_write(ptdev, CSF_DOORBELL(CSF_GLB_DOORBELL_ID), 1);
+mdelay(100);
+pr_err("%s[%d] likely-halted status=%x\n", __func__, __LINE__, 
gpu_read(ptdev, MCU_STATUS));
+		panthor_fw_update_reqs(glb_iface, req, 0, GLB_HALT);
+mdelay(100);
+pr_err("%s[%d] likely-running ? status=%x\n", __func__, __LINE__, 
gpu_read(ptdev, MCU_STATUS));
+
  		if (!gpu_read_poll_timeout(ptdev, MCU_STATUS, status,
  					   status == MCU_STATUS_HALT, 10,
  					   100000)) {
"

In my case, the relevant output looks like this:

"
[    3.326805] panthor_fw_pre_reset[1090] pre-halt status=1
[    3.432151] panthor_fw_pre_reset[1095] likely-halted status=2
[    3.542179] panthor_fw_pre_reset[1098] likely-running ? status=2
"

That means, the GPU remains halted at the end, even if the "GLB_HALT" 
bit is cleared before the last print. The clearing of GLB_HALT is also 
what panthor_fw_post_reset() does.

I suspect the extra soft reset I did before "un-halted" the GPU and 
allowed it to proceed.

I wonder if there is some way to un-halt the GPU using some gpu_write() 
direct register access, is there ? Maybe the GPU remains halted because 
setting the GLB_HALT stops command stream processing, and the GPU never 
samples the clearing of GLB_HALT and therefore remains halted forever ?
--------------RUV3G7hQJYDoa7JET1paPDuU
Content-Type: text/x-patch; charset=UTF-8; name="pan.diff"
Content-Disposition: attachment; filename="pan.diff"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZncuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZncuYwppbmRleCA5YmYwNmU1NWVhZWVh
Li41N2MwZDRmZDI5YWEyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcGFudGhvci9w
YW50aG9yX2Z3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9mdy5j
CkBAIC0xMDg3LDggKzEwODcsMTYgQEAgdm9pZCBwYW50aG9yX2Z3X3ByZV9yZXNldChzdHJ1
Y3QgcGFudGhvcl9kZXZpY2UgKnB0ZGV2LCBib29sIG9uX2hhbmcpCiAJCXN0cnVjdCBwYW50
aG9yX2Z3X2dsb2JhbF9pZmFjZSAqZ2xiX2lmYWNlID0gcGFudGhvcl9md19nZXRfZ2xiX2lm
YWNlKHB0ZGV2KTsKIAkJdTMyIHN0YXR1czsKIAorcHJfZXJyKCIlc1slZF0gcHJlLWhhbHQg
c3RhdHVzPSV4XG4iLCBfX2Z1bmNfXywgX19MSU5FX18sIGdwdV9yZWFkKHB0ZGV2LCBNQ1Vf
U1RBVFVTKSk7CisKIAkJcGFudGhvcl9md191cGRhdGVfcmVxcyhnbGJfaWZhY2UsIHJlcSwg
R0xCX0hBTFQsIEdMQl9IQUxUKTsKIAkJZ3B1X3dyaXRlKHB0ZGV2LCBDU0ZfRE9PUkJFTEwo
Q1NGX0dMQl9ET09SQkVMTF9JRCksIDEpOworbWRlbGF5KDEwMCk7Citwcl9lcnIoIiVzWyVk
XSBsaWtlbHktaGFsdGVkIHN0YXR1cz0leFxuIiwgX19mdW5jX18sIF9fTElORV9fLCBncHVf
cmVhZChwdGRldiwgTUNVX1NUQVRVUykpOworCQlwYW50aG9yX2Z3X3VwZGF0ZV9yZXFzKGds
Yl9pZmFjZSwgcmVxLCAwLCBHTEJfSEFMVCk7CittZGVsYXkoMTAwKTsKK3ByX2VycigiJXNb
JWRdIGxpa2VseS1ydW5uaW5nID8gc3RhdHVzPSV4XG4iLCBfX2Z1bmNfXywgX19MSU5FX18s
IGdwdV9yZWFkKHB0ZGV2LCBNQ1VfU1RBVFVTKSk7CisKIAkJaWYgKCFncHVfcmVhZF9wb2xs
X3RpbWVvdXQocHRkZXYsIE1DVV9TVEFUVVMsIHN0YXR1cywKIAkJCQkJICAgc3RhdHVzID09
IE1DVV9TVEFUVVNfSEFMVCwgMTAsCiAJCQkJCSAgIDEwMDAwMCkpIHsK

--------------RUV3G7hQJYDoa7JET1paPDuU--


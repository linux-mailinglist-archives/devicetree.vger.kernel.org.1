Return-Path: <devicetree+bounces-1302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F28E7A5CD5
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:46:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09DFF282126
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 08:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2110358AB;
	Tue, 19 Sep 2023 08:45:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C50538C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 08:45:55 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1C6EE6;
	Tue, 19 Sep 2023 01:45:53 -0700 (PDT)
Received: from localhost.localdomain (unknown [IPv6:2001:b07:646b:e2:e4be:399f:af39:e0db])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laura.nao)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6BA5B66057B6;
	Tue, 19 Sep 2023 09:45:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695113152;
	bh=I9ktfih0sa6jgd7LQe4oO4cl3jZWiRbZxvF64WAFJ64=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RnSgsG0+DeUNMB3HhUK/2fjxJJ/to9uV0+mEMUbGxMgn5t2b+Jh3bS9wdQkSguM8l
	 ohclYn0BDKntkCsksU5VNp/OCyBcOUlJ2MPDv7MBUMD16oIKBPwNrILw+uvt444RH3
	 XQRnP47sg5J8VHIFkFttZycmSSIpx72Y8evt9ijx6gU3lg7EKxSXWKIFzNDCtYe+H1
	 ehb8qIyrmYO+LdfigxTeLaMFEHmVtBfmwx/TOx2mT66QKZ9depLeU79TUt7TqYkJ46
	 652Es9yZyca6ibAYkQSY6Gl/QyqyDdv/QUxJne9hUM77KVxC1o36VWQjpW7e/VvZmK
	 qMZJ1H6JNd23g==
From: Laura Nao <laura.nao@collabora.com>
To: mathieu.poirier@linaro.org
Cc: Project_Global_Chrome_Upstream_Group@mediatek.com,
	andersson@kernel.org,
	angelogioacchino.delregno@collabora.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	krzysztof.kozlowski+dt@linaro.org,
	laura.nao@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-remoteproc@vger.kernel.org,
	matthias.bgg@gmail.com,
	robh+dt@kernel.org,
	tinghan.shen@mediatek.com
Subject: Re: [PATCH v17 00/14] Add support for MT8195 SCP 2nd core
Date: Tue, 19 Sep 2023 10:45:52 +0200
Message-Id: <20230919084552.260918-1-laura.nao@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <ZQj16b1NvkDlij+H@p14s>
References: <ZQj16b1NvkDlij+H@p14s>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 9/19/23 03:14, Mathieu Poirier wrote:
> On Mon, Sep 18, 2023 at 12:31:41PM +0200, Laura Nao wrote:
>>> Other than patch 2 and 14, I have applied this set.  The remaining patches will
>>> have to be resent to Matthias.
>>
>>> Thanks,
>>> Mathieu
>>
>> Hello,
>>
>> With patch 2 missing, the SCP is not probed correctly anymore on asurada (MT8192) and kukui (MT8183). The mtk-scp driver relies on the existence of the `cros-ec-rpmsg` node in the dt to determine if the SCP is single or multicore. Without patch 2 the driver wrongly assumes the SCP on MT8192 and MT8183 are multicore, leading to the following errors during initialization:
>>
>> 10696 04:33:59.126671  <3>[   15.465714] platform 10500000.scp:cros-ec: invalid resource (null)
>> 10697 04:33:59.142855  <3>[   15.478560] platform 10500000.scp:cros-ec: Failed to parse and map sram memory
>> 10698 04:33:59.149650  <3>[   15.486121] mtk-scp 10500000.scp: Failed to initialize core 0 rproc
>>
>> The issue was caught by KernelCI, complete logs can be found here:
>> - asurada: https://storage.kernelci.org/next/master/next-20230914/arm64/defconfig+arm64-chromebook+videodec/gcc-10/lab-collabora/baseline-nfs-mt8192-asurada-spherion-r0.html
>> - kukui: https://storage.kernelci.org/next/master/next-20230914/arm64/defconfig+arm64-chromebook+videodec/gcc-10/lab-collabora/baseline-nfs-mt8183-kukui-jacuzzi-juniper-sku16.html
>>
>> Reporting the issue so that patch 2 and 14 can be resent and merged soon.
>>
> 
> Apologies for the trouble here, the error is mine.
> 
> I have applied and pushed patch 02 - please confirm that things are working as
> expected now.  Matthias will need to either ack patch 14 or pick it up himself.
> 
> 

I confirm SCP is probed correctly on MT8192 (spherion) and MT8183 (juniper) on the remoteproc tree (for-next branch) now.
Thank you!



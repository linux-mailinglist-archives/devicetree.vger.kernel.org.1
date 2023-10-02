Return-Path: <devicetree+bounces-5166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A21D7B57E9
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:33:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 0F14B1C20410
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A592F199D8;
	Mon,  2 Oct 2023 16:33:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8786E1DA2A
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:33:52 +0000 (UTC)
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [85.215.255.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B48A3B3;
	Mon,  2 Oct 2023 09:33:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696264426; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=pzk0U+B64dl6gOW8iAE8z12BypQO2ykpNryEa2X+KEMjVDRNfrIGJWF/defESIa2DR
    2fy0xqnQRJ6erba9rMaiJh709cFPhm5BacSbK1l9rLcLvyLE55VFCbJlCpetMZtEwh89
    vPKq/dkw6J3iL2fn5LnYMMrRmu5N9mSPGdE9VJUBysPr57MhZnOEabWo1HVRubmB6EQl
    8w99pk0LogdpxdXy6WEY12/wiszENnCV4wjgs5V8GCN8Am2oWdGIslktvltjPrHsk9SO
    /yI4cXIXLTGSqqlUfiR072+2EaommcagaA855TksOYF8dssgOk1Bfp4X0C75NG5qtfCO
    pVeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1696264426;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=N/48FahJ9clZ0OY5lyL8EtmUvzfT96fJTVA/eqGBPDI=;
    b=aSRaFa6V9fLb1zBC25cD/e2EZdDKn4T+s8JlSS/9L8MA+fI4EW5Pqg6Xl6BiTDiRgB
    Qvvep9x0KFIXKRMMUbAqbjbo9g2p1F8kzSyt+AMmRN+lgNKJZ5Kl+2vLaowi3ak+DTPE
    EXyaY0tRngjmH77PtBnxcnI98iiem6AdJbDB8f3fum+5bscr1MFVqszX01BKvmzkPivA
    uTyfx6vWNov4p67ZeonXrpQTYxVCOFZn5xvfCMgp3RZevUU9LE31cmGlKaQfFVqk9D5w
    h8iOvw7H8u5ESM+3YW8QGLs6FKoVOKT1nViBCVfT/TeqJx6R/sJspVKpdIiPSJ+KGOgq
    vQ2w==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1696264426;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=N/48FahJ9clZ0OY5lyL8EtmUvzfT96fJTVA/eqGBPDI=;
    b=IMxh7fOfJBhDi6NQMOC6gwCuS8n6JIf5wsnC0SrVY7zJWYt3iKWluAo9a1KRf0nkcl
    LG/+BkRBihVJ8tWV2cM3kuMPQgInXQAac6Dkkn45WZdNqVe1yJjWN671q81Jyw0LLk5X
    fhSDjkfYEIjfpziK9dQQApm0+GTprDN750VDQ0e5gQb7yrx4I7homqZsIY826UATlYv8
    yCXnr2kuEvONl9OnalR7wQuMuLZXc/sVVnk4Y/squcXK8f3JbJMutbSsEZmwj1CJNmI+
    dmL9FCgFge4Si4amw+qjMU3MVmIANyziGhVZ3gMPkhSkgHpS6mnRBLMo9af8RVathuqJ
    zr8w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1696264426;
    s=strato-dkim-0003; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=N/48FahJ9clZ0OY5lyL8EtmUvzfT96fJTVA/eqGBPDI=;
    b=CU5/vTzBZuWK7VevwzB+9FMfWczW1tKb05HwZCMa9ObKkAhCTKEqLr8kPMQ06MvEZs
    icgoeF9P+56vjBP6cHCA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJD4peA8paF1A=="
Received: from gerhold.net
    by smtp.strato.de (RZmta 49.8.2 DYNA|AUTH)
    with ESMTPSA id R04c57z92GXj0fR
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Mon, 2 Oct 2023 18:33:45 +0200 (CEST)
Date: Mon, 2 Oct 2023 18:33:39 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH 03/13] arm64: dts: qcom: msm8916: Add common
 msm8916-modem-qdsp6.dtsi
Message-ID: <ZRrv0edZ3lf4wxYx@gerhold.net>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
 <20230926-msm8916-modem-v1-3-398eec74bac9@gerhold.net>
 <45665b43-3be9-4f27-aa88-12cdef56346d@linaro.org>
 <ZRMrqsZ0QeDNFHFj@gerhold.net>
 <1be747ae-1d80-4ebc-9841-c0e98e64a0d1@linaro.org>
 <ZRM8XzmAz8RAqkUg@gerhold.net>
 <86c130a3-4231-a363-f064-a637d599b936@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86c130a3-4231-a363-f064-a637d599b936@linaro.org>
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 02, 2023 at 11:59:21AM +0200, Konrad Dybcio wrote:
> 
> 
> On 9/26/23 22:17, Stephan Gerhold wrote:
> > On Tue, Sep 26, 2023 at 10:01:21PM +0200, Konrad Dybcio wrote:
> > > On 26.09.2023 21:06, Stephan Gerhold wrote:
> > > > On Tue, Sep 26, 2023 at 08:49:24PM +0200, Konrad Dybcio wrote:
> > > > > On 26.09.2023 18:51, Stephan Gerhold wrote:
> > > > > > Most MSM8916/MSM8939 devices use very similar setups for the modem,
> > > > > > because most of the device-specific details are abstracted by the modem
> > > > > > firmware. There are several definitions (status switches, DAI links
> > > > > > etc) that will be exactly the same for every board.
> > > > > > 
> > > > > > Introduce a common msm8916-modem-qdsp6.dtsi include that can be used to
> > > > > > simplify enabling the modem for such devices. By default the
> > > > > > digital/analog codec in the SoC/PMIC is used, but boards can define
> > > > > > additional codecs using the templates for Secondary and Quaternary
> > > > > > MI2S.
> > > > > > 
> > > > > > Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> > > > > > ---
> > > > > I'd rather see at least one usage so that you aren't introducing
> > > > > effectively non-compiled code..
> > > > > 
> > > > 
> > > > There are 10 usages in the rest of the patch series.
> > > > Is that enough? :D
> > > > 
> > > > IMHO it doesn't make sense to squash this with one of the device
> > > > patches, especially considering several of them are primarily authored
> > > > by others.
> > > I see..
> > > 
> > > Well, I guess I don't have better counter-arguments, but please
> > > consider this the next time around.
> > > 
> > 
> > Will do!
> > 
> > > [...]
> > > 
> > > > > > +&lpass_codec {
> > > > > > +	status = "okay";
> > > > > > +};
> > > > > Any reason for it to stay disabled?
> > > > > 
> > > > 
> > > > You mean in msm8916.dtsi?
> > > Yes
> > > 
> > > > For the SoC dtsi we don't make assumptions
> > > > what devices use or not. There could be devices that ignore the internal
> > > > codec entirely. If there is nothing connected to the codec lpass_codec
> > > > should not be enabled (e.g. the msm8916-ufi.dtsi devices).
> > > See my reply to patch 5
> > > 
> > > [...]
> > > 
> > 
> > Let's continue discussing that there I guess. :D
> > 
> > > > > > +	sound_dai_secondary: mi2s-secondary-dai-link {
> > > > > > +		link-name = "Secondary MI2S";
> > > > > > +		status = "disabled"; /* Needs extra codec configuration */
> > > > > Hmm.. Potential good user of /omit-if-no-ref/?
> > > > > 
> > > > 
> > > > AFAICT /omit-if-no-ref/ is for phandle references only. Basically it
> > > > would only work if you would somewhere reference the phandle:
> > > > 
> > > > 	list-of-sound-dais = <&sound_dai_primary &sound_dai_secondary>;
> > > > 
> > > > But this doesn't exist so /omit-if-no-ref/ cannot be used here.
> > > Ahh right, this is the one we don't reference.. Too bad,
> > > would be a nice fit :/
> > > 
> > > I only see one usage of it though (patch 7), perhaps it could
> > > be kept local to that one?
> > > 
> > 
> > This patch series just contains the initial set of
> > msm8916-modem-qdsp6.dtsi users (for devices which are already upstream).
> > We probably have like 20 more that still need to be upstreamed. :D
> > 
> > sound_dai_secondary is fairly rare, but there is at least one more user
> > that will probably end up upstream soon.
> 2 users don't sound particularly great in a devicetree included by 20 other
> non-users
> 
> > I think the overhead of these template notes is absolutely negligible
> > compared to all the (potentially) unused SoC nodes we have. :D
> Yes, however the unused SoC nodes are mostly standardized and could be used
> as-they-are on a vast majority of devices
> 

To be fair we're talking about 152 bytes difference here, in a DTB that
is like 60,000 bytes total. But I can't think of enough compelling
arguments for my "template node" approach, so I will try to rework this
in v2. Let's see if I can get rid of the unused nodes without too much
mess. :)

Thanks,
Stephan


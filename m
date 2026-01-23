Return-Path: <devicetree+bounces-259106-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MNXAY3Hc2lZygAAu9opvQ
	(envelope-from <devicetree+bounces-259106-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:10:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBAD7A07E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 20:10:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D15BE308FAAD
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 19:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF13E2652A4;
	Fri, 23 Jan 2026 19:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VNGfq4qX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jHsBL7IW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5472325A354
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 19:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769195267; cv=none; b=Uv1PaZ7DRQMcmgHnOtR20Kv4q79EGo1Fvq+ZGTMLPrH027uKyUqcz6tJdbitbb8LjayZKFGQyCvZlyG+I6EuzZHZxEgSL9IDWcvweEF70jLxs635gsB7hT4tSpZuO4y6nkB+gaEkyKbDjcOaTuzTDXzLI3JKhKl9mSWT7rfGPTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769195267; c=relaxed/simple;
	bh=LBlAQsCNO9+09TmgNxwCaCBZ9pzWxQNhB++baM60OK4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=asJgaXLt1gq8TpG7Ed2femnbjh2uI5KTOgaREMx1yEdngY2Ey/islsgX5zPi1BnOz0uRMUTU8Ad5e7oq77sSsbKv1yFOBrxBM/4Bf3kTsaOjf4rBoJevTkR31m8jxVB2JjyUzJlA3iDpRnqa6uOZ92oPTSkS2So34yE/PSSL7uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VNGfq4qX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jHsBL7IW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NBwttS3656479
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 19:07:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3CwsgCCOYineJDwVKbLuJ6tk
	xA7rBVSsBjBR7kQMG54=; b=VNGfq4qXvElh7WcDjMb8ezt+RbZiC1A8Uma6e6Hh
	vWUeMfArlD28w1/ySMWtR5+fCTzuqxC0QlVQrQLE5aiQxnAo4JReZUqQKd4eUUtb
	xiO5yGHAqIhBwhCNaiLu/6IIFZtgypt1wqLvlLht5Kn74yMtzFECYl7eV8+PWvqa
	4WQbyGC4kcfk/IZ3AFnn5UoejPHkwRBlOMvYQ5nOSO4SiKY5gPLmXvfbDqAu+c4T
	IcSVRTf2/MBLBLhz0hm557ZAaX6JPatRnstFWE1gyZMQ4SLVIBE8bmDTLCik/ijb
	kApt2MLgucHI0eO5tgx5udAGDnUAxSgJjEXVSKXwGWaTxg==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv2hwaqsn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 19:07:45 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9483bbef5f7so108928241.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 11:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769195264; x=1769800064; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3CwsgCCOYineJDwVKbLuJ6tkxA7rBVSsBjBR7kQMG54=;
        b=jHsBL7IWHqUBmqK04AiloQJs26zx+HgpQU5QeGnPU6GIW/y5hJnia74ttYpW4whR41
         wHs+L369HR7deZ7mL1jSAlMLrwC1kFt4yzplFPtDI4C8Sgg3/z0qOQJuJW3Lldm4C2mM
         vuhPQfx3kIeheFsYmmXDFMi7prpjqxlcSKJ+zbVWJeJfHA4B8nRpoBgR8oE+xeInc//k
         UjVXH3QrpAVNBhkOjsMk9u1D07bBGPB8juj36Ix3Fz6nTxQPo0ckrjP8V3Z/THWxRs34
         7FHrJwsD8XuuqeXnv3k+VV8+vplX3cXsVMlb+tqsvTqkD/c88+9eswvHFh31UpiRcUU4
         MRMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769195264; x=1769800064;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3CwsgCCOYineJDwVKbLuJ6tkxA7rBVSsBjBR7kQMG54=;
        b=awSwWDJndS1FEXjrsqyDWUpnAk0jy2QnKqFhq4CFM1CgPkyoRAqZIbXABWKB6wFSM4
         v5TXa45D+OykfSXaO+QN/2M5F2pZbNoSUC9ZL1Zadomp7PgbEpqvS4QwJZFkOj7Rw9VD
         n5OCir+YhFJxk7RZCJZCnm2i7kuKAMssUYOOriQv+ewhh/ADmabbLkfV3gHZQ9M8Viwe
         D+nWfMGbsFhOkcf4fLHkw0rw2viqIWKZZPBj2geK6xSeK1+PH4AoWsEEF4yEUjP2hohw
         1M7x7z42jI9M4ZerUUsLXARq+LH89Aa//WUQ34hBSQD+SPokzMCjaoVYPN65nVLrMFPL
         1s5g==
X-Forwarded-Encrypted: i=1; AJvYcCW4YdfXprAMcNXN7txJYKhfoicrHRgO3JuhKiDUocIl3qOF7TzPyGYdeqJobr1wcCOiMPfsJ1L2Ugly@vger.kernel.org
X-Gm-Message-State: AOJu0YzCspbGKO09HtR1unjs59g+to4HZBewy0qQOVrBVScz5EymqEkr
	tMoH2hgosGr3HESU06H4cwd5YXvUB7fzYxdX1KdW8UtKIlwPY9PKP7+PguvuNBOXjCcT+PkHJfE
	K9Wr58YPNjXsIO9Kxjq89cfSKGOcPrVUKJbt1mxYTWBjWgdWXQomNVHGzmdUWKcxq
X-Gm-Gg: AZuq6aLDpc/I/GtNXDY/G05SoiyRSiUypSNiuTQ9gtt06CaisBkiRwwUNPwv111yuI2
	2IyxMGhOjei+IF8jtOBVdPSIPyj8dX+nnfVN8I7UGi65BvpXx4jXDocBr2PtguiSSZI3bfBaaDT
	62NzuJ64NBbwF0U3dM2kVHoI8gT/43R8iBNE36VWTJYFhye918TK5TigQEph89ol65bwUxQ3A6K
	zlFpzQtuk7Y+/qHLeJ/Sd4ySIC/Hdk1Lev5yoRWbLU7GM6SngWsv8JnPtg0mlZa/dSqdPV6Ixkm
	iOaM0NQ/SusfSBDsK45JUTQ3zT57pzdnMsLvcXlJiU0qQKXxyuiIyAEydochVgCjjhRG4Whk19v
	liRDWgUTyJOaG/uWq+t3WqqcyiGYoImgsh5A4BIJm+uPWbJkDPi4hqju9o8nXY//26XRaLuxmbn
	OEKbFEByrhbHjcGcZpSf8ehpc=
X-Received: by 2002:a05:6102:b15:b0:5f5:2e63:f571 with SMTP id ada2fe7eead31-5f54bb49734mr1250824137.19.1769195264385;
        Fri, 23 Jan 2026 11:07:44 -0800 (PST)
X-Received: by 2002:a05:6102:b15:b0:5f5:2e63:f571 with SMTP id ada2fe7eead31-5f54bb49734mr1250802137.19.1769195263671;
        Fri, 23 Jan 2026 11:07:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de49189e2sm843186e87.61.2026.01.23.11.07.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 11:07:43 -0800 (PST)
Date: Fri, 23 Jan 2026 21:07:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Prasad Malisetty <pmaliset@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: kodiak: Fix PCIe1 PHY ref clock voting
Message-ID: <3ivpkq4divmn6q5per2kqxhbf6ufaaa4raehphqbfn3dig3eie@fdqycl454gt6>
References: <20260123-fix_pcie1_phy_clk-v1-1-38f82ea01792@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123-fix_pcie1_phy_clk-v1-1-38f82ea01792@oss.qualcomm.com>
X-Proofpoint-GUID: 7g2DPdUM1q-lKeekKX_eqPbBYf9uGrlm
X-Proofpoint-ORIG-GUID: 7g2DPdUM1q-lKeekKX_eqPbBYf9uGrlm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDE0NiBTYWx0ZWRfX/7ypqj3iBpA2
 gfolWCHOrM7TcEYXdRMtzV1w1lA9K5NvsfrPrwYRjImO88Czw5epWVKe1qp1z6zccZLWbtyuQVv
 R0NFQb5g/l0TiPB5s7NVt2U2Cm6rOeZqGG8r0MD908EVqRkTvTDdAtboHYU2I775EIKt5aa0GWZ
 ooWgZFl+1ZTgoWXvBBy3dI+Yj/Q4kwWd8ew5bIFfYDMzvtNsp3CBD19WVhQe86Aa3u1nd8V+LE/
 ovhZ2L3tXk1zVGHK4SkU4K9v1lwgyC/gjoD1fS6CuuTSG3sEz6O8rM3Bc5r5cFguAvDHHz1HzfQ
 GFsuSR0T/WjSpYhZdZdK79rWmT5vb6RWwVXzCpcrA08azC3ZqjLF80qogH9xgoGZI0n4U0CLTsA
 4iHv0PsZSNJAxGnc+cbvlh077I5E5SJ6edJknXMwN617lbEW49qYlUHKY6H5PSKoKymfL/FD5YG
 rprRupXLS/H/3nJMeCg==
X-Authority-Analysis: v=2.4 cv=A4Rh/qWG c=1 sm=1 tr=0 ts=6973c701 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=fmVD6mvdgdatrdQPAe4A:9 a=CjuIK1q_8ugA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230146
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259106-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4EBAD7A07E
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 05:42:27PM +0530, Krishna Chaitanya Chundru wrote:
> GCC_PCIE_CLKREF_EN controls a repeater that provides the reference clock
> only to the PCIe0 PHY. PCIe1 PHY receives its refclk directly from the CXO
> source.
> 
> If the PCIe1 driver in HLOS votes for or against GCC_PCIE_CLKREF_EN, it
> will inadvertently modify the refclk to PCIe0 as well. Since PCIe0 is
> managed by WPSS while PCIe1 is managed in HLOS, there is no mechanism to
> coordinate these votes. As a result, HLOS may disable this repeater
> during suspend and cut off the PCIe0 PHY refclk while PCIe0 is still
> active.

Thanks for the explanation.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> 
> Replace the unused GCC_PCIE_CLKREF_EN clock entry with RPMH_CXO_CLK to
> reflect the actual hardware wiring and prevent unintended changes to
> PCIe0 clocking.
> 
> Fixes: 92e0ee9f83b3 ("arm64: dts: qcom: sc7280: Add PCIe and PHY related nodes")
> Cc: stable@vger.kernel.org
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kodiak.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

-- 
With best wishes
Dmitry


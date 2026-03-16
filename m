Return-Path: <devicetree+bounces-276324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELH+Ogs5uGmpagEAu9opvQ
	(envelope-from <devicetree+bounces-276324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:08:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D58929DD43
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:08:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE3893035A8C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E37733CF69D;
	Mon, 16 Mar 2026 17:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X+Nlgmj4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WLNlmCcf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FED73CF688
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773680863; cv=none; b=ITLXAoUvuVBm65ZDciDJzfzGA4wiONAOQF1JT4C9s1Pz+eavUrQfGQl534Wn/vzYstE+Z4KwXUoh70Ev7GZXOq/SMWQYPFKfMZE7o7jxr9SGoPzht1NUo3bQ5o5lwRlnH7u4P0bjZsoFKTkgjx89YX06psH+etpNSh2WWftE9Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773680863; c=relaxed/simple;
	bh=ndSyZFZJ0iMwREzqBpvvKbaR/JlX2TVhp1ZhDsVoAMw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n0QtsXlPKnbxMnnCFK5cn3b75ZgVxFULDG0Di6e61saoWE8BMFagLEvxHPq59uohM17TqP6TFVxyNDTnmw0O9wE/XOxAV5b0+RCXGlVRqlNIaI4Xu44QPE4sUC6POtvlznjpx+zhsps0H8u5x5ZiBlWJ3dp9GNtI35ksP62eV4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X+Nlgmj4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WLNlmCcf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GF2f9D1534027
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:07:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n1xeMoYeUM0iSmvPxnEiOO/lpTwBXAxToBC2I8g5MT0=; b=X+Nlgmj4OOaKssRg
	4e+d6j+YInLZbUUYEhBCPUFKoIM4YtGoc99GwqQ10TJmPjB/CmSuHpPwmbV7wSg+
	gmPOqgVaLk8ZRcWDLGYwb4WoBNwYGGAQu9LwjKdtBF4Vq/PP8ILX80VePosnAn9/
	VUBBXlO9VluIzXokZac37bTWrwu/A3+s3GmM9CEKFq++6YzLLn0yfllLDnndTx2S
	kyronXorVd/CLR6pMaqTIWmB5SUN5szZpHBFg6AuY1JRWB88ClPlvnATCqj73Fae
	8wnwP1NqnvRuRn/MfB0lX8kaZ0Fjrfu8XnfDTCed23SOC09MYiYYPVBbVNuAGwNZ
	/Pg+zA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxm5k0fwm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:07:41 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8298150caddso4365998b3a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773680860; x=1774285660; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n1xeMoYeUM0iSmvPxnEiOO/lpTwBXAxToBC2I8g5MT0=;
        b=WLNlmCcfY1L4DajT9laaw/czeAc3AMt4JQ0UaLGUzal22UF+UVmUjTDOt0AfN4d/ai
         8IzOidWa2eDR/Kh9CTp3ndxrHN8GNriUVMhDZ8j5BAYed9+JpHF2bYjiAqFcY4JZArxH
         aqyAwOoTU45akBm3F0Bq4inWTjMKRJ3XXouwYgQn4iNYMHu9EAfigDVzUm7XMz14rHez
         aKDmBlxnQtq75VdiinuU4JZ/OsrZ2MI6gQsmh1o945+MKZMHOgnJkrK8M0GNWbJmEFxD
         8mcIV1B6phBVAktH/o0bTdx/mxuWdO0FSmx8uww4XQf8ImVNo46G1FGARHNzaCJ8CUQf
         D+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773680860; x=1774285660;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n1xeMoYeUM0iSmvPxnEiOO/lpTwBXAxToBC2I8g5MT0=;
        b=GQhXGd8CwZqvx21TPEvf9JivAml13NlSt3JqXo8HCvlJ3P5xaKxsgv897K7ToUvzoV
         Sun/MVMgezQtx6f7S5dWLKs2JUWvjoijZRG6buh/HfdKRN/cR3sefuiAplBFsChzNJ8d
         /rbc7ZhFlYgCUVqFPT44R6f55HQWIR5hkk3h/lSEuB7vrNU2ah/knyGFYlpZgnmhhQfo
         5Ij2VFvKjOSFziuBzUM4h3WG0o4Udw6rl98Tf5k367fM1rzzMDxWLxoMTfZ53zkRyGNk
         oiE1cqIKXG0M9oZt1D9rpK4tTqwMXZKdRUoKkGlAAFNK7BKCF+Lljd1i286HlaSDEVjy
         spaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMpIznVyGcBKyme8N12ks1XnVYup6S5KJcjSlROLudUOZKtd+RsPH50WYgGq8hLgv7CdSAm+N2cDFc@vger.kernel.org
X-Gm-Message-State: AOJu0YwbvSJZzetAL+m85/7xtPckz5Zm5wAtt0KfqIlYyHchM9RR8r/c
	Tu0cIDCv/WYQamQJPbSfRDyhbHArP+SYVxHgbNswHHrSyXPvbCl+ptYT/Z8yU+xxKRhqg4E2l9B
	LXcWRXgc+zHdxHkbkcKp7CskiG3+y00u0ddtRfnx51pvAAiMvweCXW95hpTAvQGvy
X-Gm-Gg: ATEYQzxVG1peGbgH570TTCmGOVl44tolcBYHybjlIIfQqpaFQwziDaOnmzmIdUMh65P
	4EgtMnOPHsE2HLLaJomr/k1ljtzC5AiIyMrRAHaMkWdUcR8BgEo3e95bg7yNieAsHlW7iYk8KUG
	839zAMxs+1vVdHSiQaNTG7liMxFq/Lk1whdWJVL7XbYhBeTm3iZZe3gkT7CAy1oI+dZa3Mt3JAg
	bcgf6TJjUyZaEze3RayNFLeFMYyQ97+xcZy4c+NRvnXzUY0Lxs9aFOooDde591+H6F9eIjjwiBl
	qc86+V1PNi/9FBnY/DhUk/kShEV2aSi6wVhHXuFcWAyfNJ4IDFPIxstBs9wIFSMpAawdauYqV24
	lbtQkh/aauy/DR2SbgHKyNjJLDjXKtWLlPU+K0vjyxMMvJMMKkYT6v2wApw==
X-Received: by 2002:a05:6a00:854:b0:81e:81fb:b392 with SMTP id d2e1a72fcca58-82a196d9795mr12519522b3a.11.1773680860304;
        Mon, 16 Mar 2026 10:07:40 -0700 (PDT)
X-Received: by 2002:a05:6a00:854:b0:81e:81fb:b392 with SMTP id d2e1a72fcca58-82a196d9795mr12519484b3a.11.1773680859759;
        Mon, 16 Mar 2026 10:07:39 -0700 (PDT)
Received: from [192.168.1.12] ([38.254.186.229])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a072418e9sm14954842b3a.3.2026.03.16.10.07.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 10:07:39 -0700 (PDT)
Message-ID: <dbfcbc9c-2175-49a3-aee4-434b69cbaece@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 22:37:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 2/3] of: factor arguments passed to of_map_id() into a
 struct
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Nipun Gupta <nipun.gupta@amd.com>,
        Nikhil Agarwal
 <nikhil.agarwal@amd.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Thomas Gleixner <tglx@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Juergen Gross <jgross@suse.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Prakash Gupta <prakash.gupta@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, imx@lists.linux.dev,
        xen-devel@lists.xenproject.org, linux-arm-msm@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
References: <20260309-parse_iommu_cells-v10-0-c62fcaa5a1d8@oss.qualcomm.com>
 <20260309-parse_iommu_cells-v10-2-c62fcaa5a1d8@oss.qualcomm.com>
 <esfzpgpgenydif2sxahsetkglz6kewsgjhkmzr6ulrrkctnkbq@a4zsfdmhbxui>
 <27edd195-b0d3-4214-9df3-74a84da1e3e1@oss.qualcomm.com>
 <dyjdwxaq4oc7ahri3iuhnmobh3gwmn6drhox7t2elep4rlqhuq@fe4gp5t7q5r5>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <dyjdwxaq4oc7ahri3iuhnmobh3gwmn6drhox7t2elep4rlqhuq@fe4gp5t7q5r5>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=fJ00HJae c=1 sm=1 tr=0 ts=69b838dd cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=FuYIH7Xx0xzBSkYrynBYgw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=GQrJT2J37VpXmJLvS4cA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDEzMyBTYWx0ZWRfX7ILCmCCYd3DP
 Qifdia7D7o+602lvFxYTejA+J8h58Fg+C4Sj3hxsN2btVB+G3t+eS3qphKM0eWA36vH5Six1HMh
 MWZjEnExvYB0SA2VCDvoSYmQbEic6GGBm9S8Q0H0P7VmjDsXq9sAKiBMuKkRgVyXiNU4r3YaAjh
 /8OzDy9p0DNSP6K/Wovb3SDyo+NZTzcaRo2ks/FNuUlOv0xg9H0q+1YO3R/bSWamZIgoslL4upC
 /qh46Ldjs1BiNtI9As85uWltdFykhvFXtHlhr2yTNlDVb3wZAPORDNb7aG9UhxWpLbHz7pE9uu0
 6Y89HgGIeN+ShHbWLV/VZdnGpndkt86QTXiboPSvfo2kPIpqq15yDCf1J3ux3GEfsxHXJFKHkIj
 kcDOhuQ5j/WSfDfKJija3IoiCGZcDJRBNFk78h34FJAgmQ+U0Nr6vn9WiOCIoTGvYP3JT/TUGAp
 L/R1PYvz3T92AtBLI/Q==
X-Proofpoint-GUID: MjwuPTo3LZy_XZXtxubtugdLtKlI6jPv
X-Proofpoint-ORIG-GUID: MjwuPTo3LZy_XZXtxubtugdLtKlI6jPv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 malwarescore=0 suspectscore=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603160133
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amd.com,8bytes.org,kernel.org,arm.com,nxp.com,pengutronix.de,google.com,gmail.com,suse.com,epam.com,oss.qualcomm.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.xenproject.org];
	TAGGED_FROM(0.00)[bounces-276324-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8D58929DD43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/12/2026 7:48 PM, Dmitry Baryshkov wrote:
> On Thu, Mar 12, 2026 at 05:12:51PM +0530, Vijayanand Jitta wrote:
>>
>>
>> On 3/10/2026 2:53 AM, Dmitry Baryshkov wrote:
>>> On Mon, Mar 09, 2026 at 01:03:38AM +0530, Vijayanand Jitta wrote:
>>>> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>>>>
>>>> Change of_map_id() to take a pointer to struct of_phandle_args
>>>> instead of passing target device node and translated IDs separately.
>>>> Update all callers accordingly.
>>>>
>>>> Subsequent patch will make use of the args_count field in
>>>> struct of_phandle_args.
>>>>
>>>> Suggested-by: Rob Herring (Arm) <robh@kernel.org>
>>>> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>>>> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
>>>> ---
>>>>  drivers/cdx/cdx_msi.c                    |  5 ++-
>>>>  drivers/iommu/of_iommu.c                 |  2 +-
>>>>  drivers/irqchip/irq-gic-its-msi-parent.c | 11 ++++--
>>>>  drivers/of/base.c                        | 63 ++++++++++++++++----------------
>>>>  drivers/of/irq.c                         |  8 +++-
>>>>  drivers/pci/controller/dwc/pci-imx6.c    | 16 ++++++--
>>>>  drivers/pci/controller/pcie-apple.c      |  5 ++-
>>>>  drivers/xen/grant-dma-ops.c              |  4 +-
>>>>  include/linux/of.h                       | 12 +++---
>>>>  9 files changed, 76 insertions(+), 50 deletions(-)
>>>>
>>>> diff --git a/drivers/cdx/cdx_msi.c b/drivers/cdx/cdx_msi.c
>>>> index 63b3544ec997..03232b5ffbca 100644
>>>> --- a/drivers/cdx/cdx_msi.c
>>>> +++ b/drivers/cdx/cdx_msi.c
>>>> @@ -121,6 +121,7 @@ static int cdx_msi_prepare(struct irq_domain *msi_domain,
>>>>  			   struct device *dev,
>>>>  			   int nvec, msi_alloc_info_t *info)
>>>>  {
>>>> +	struct of_phandle_args msi_spec = { .np = NULL };
>>>
>>> Why do you need to set it? Parse functions ignore passed args, don't
>>> they?
>>>
>>
>> The parse function does check arg->np on input — if it is non-NULL,
>> it is used to match only entries targeting that specific node.
>>
>> Also, there is this existing path in drivers/pci/msi/irqdomain.c which
>> pre-sets the node and passes it as input to of_msi_xlate(), so the node
>> pointer is not ignored by the parse code:
> 
> Is it only being used for MSIs? If so, can we make that explicit in the
> API by having the 'filter' device_node pointer?
> 

Yes, I see this is used only in the MSI path via of_msi_xlate(). 

By filter do you mean the below changes ? here of_map_id() and of_map_msi_id() would accept the filter
as a separate parameter so that arg becomes a pure output:


int of_map_id(const struct device_node *np, u32 id, const char *map_name,
              const char *cells_name, const char *map_mask_name,
              const struct device_node *filter_np, struct of_phandle_args *arg);

int of_map_msi_id(const struct device_node *np, u32 id,
                  const struct device_node *filter_np, struct of_phandle_args *arg);

of_msi_xlate() would then pass *msi_np as filter_np down to of_map_msi_id
and IOMMU callers would pass NULL to of_map_id. 

Does this look fine ? I can include this in v11.

Thanks,
Vijay

>>
>> u32 pci_msi_domain_get_msi_rid(struct irq_domain *domain, struct pci_dev *pdev)
>> {
>>         struct device_node *of_node;
>>         u32 rid = pci_dev_id(pdev);
>>
>>         pci_for_each_dma_alias(pdev, get_msi_id_cb, &rid);
>>
>>         of_node = irq_domain_get_of_node(domain);
>>         rid = of_node ? of_msi_xlate(&pdev->dev, &of_node, rid) :
>>                         iort_msi_map_id(&pdev->dev, rid);
>>
>>         return rid;
>> }
>>
> 


